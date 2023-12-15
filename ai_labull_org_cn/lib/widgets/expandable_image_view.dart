import 'dart:io';
import 'package:ai.labull.org.cn/router/routes_name.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:photo_view/photo_view.dart';

class ExpandableImageView extends StatelessWidget {
  final String imageUrl;
  final String
      tag; // Optional: Use if you want to have multiple expandable images with unique tags

  const ExpandableImageView(
      {Key? key, required this.imageUrl, this.tag = 'expandableImage'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                _FullScreenImageScreen(imageUrl: imageUrl, tag: tag),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          ));
        },
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
          progressIndicatorBuilder: (context, url, progress) {
            return Center(
              child: CircularProgressIndicator(
                value: progress.progress,
              ),
            );
          },
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ));
  }
}

class _FullScreenImageScreen extends StatefulWidget {
  final String imageUrl;
  final String tag;

  const _FullScreenImageScreen(
      {Key? key, required this.imageUrl, required this.tag})
      : super(key: key);

  @override
  State<_FullScreenImageScreen> createState() => _FullScreenImageScreenState();
}

class _FullScreenImageScreenState extends State<_FullScreenImageScreen> {
  bool _isImageSavedTemp = false;
  late XFile _image;

  Future<File> _saveImageLocally(String url) async {
    // Try to get the file from the cache
    final cacheManager = DefaultCacheManager();
    FileInfo? fileInfo = await cacheManager.getFileFromCache(url);

    if (fileInfo != null) {
      // If the image is found in the cache, return the file
      return fileInfo.file;
    } else {
      // If the image is not in the cache, download it and save it
      final httpResponse = await http.get(Uri.parse(url));
      if (httpResponse.statusCode == 200) {
        final byteData = httpResponse.bodyBytes;
        final tempDir = await getTemporaryDirectory();
        final file = File('${tempDir.path}/image.png');

        await file.writeAsBytes(byteData);
        return file;
      } else {
        throw Exception('Unable to load image');
      }
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      try {
        File imageFile = await _saveImageLocally(widget.imageUrl);
        setState(() {
          _image = XFile(imageFile.path);
          _isImageSavedTemp = true;
        });
      } catch (e) {
        // Handle the exception, possibly by showing an error message to the user
        rethrow;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Stack(children: [
            PhotoView(
              imageProvider: CachedNetworkImageProvider(widget.imageUrl),
            ),
            Positioned(
                bottom: 20,
                right: 20,
                child: Row(
                  children: [
                    if (_isImageSavedTemp)
                      IconButton(
                        onPressed: () {
                          try {
                            Navigator.of(context).pushNamed(imageVariationRoute,
                                arguments: _image);
                          } catch (e) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Error saving image: $e')),
                            );
                          }
                        },
                        icon: const Icon(Icons.shuffle),
                        color: Colors.white,
                      ),
                  ],
                ))
          ])),
    );
  }
}
