import 'package:flutter/material.dart';

class ExpandableImageView extends StatelessWidget {
  final String imageUrl;
  final String
      tag; // Optional: Use if you want to have multiple expandable images with unique tags

  ExpandableImageView(
      {Key? key, required this.imageUrl, this.tag = 'expandableImage'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              _FullScreenImageScreen(imageUrl: imageUrl, tag: tag),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ));
      },
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
        loadingBuilder: (BuildContext context, Widget child,
            ImageChunkEvent? loadingProgress) {
          if (loadingProgress == null) return child;
          return Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      loadingProgress.expectedTotalBytes!
                  : null,
            ),
          );
        },
      ),
    );
  }
}

class _FullScreenImageScreen extends StatelessWidget {
  final String imageUrl;
  final String tag;

  _FullScreenImageScreen({Key? key, required this.imageUrl, required this.tag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () => Navigator.of(context).pop(),
        child: InteractiveViewer(
          panEnabled: false, // Set it to false to prevent panning.
          boundaryMargin:
              EdgeInsets.all(100), // Adjust the space for boundary if needed.
          minScale: 0.5, // Adjust the minimum scale if needed
          maxScale: 4.0, // Adjust the maximum scale if needed
          child: Hero(
            tag: tag,
            child: Image.network(imageUrl,
                fit: BoxFit
                    .contain), // Fit to contain so the image is fully visible
          ),
        ),
      ),
    );
  }
}
