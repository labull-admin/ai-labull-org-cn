import 'package:ai.labull.org.cn/blocs/bloc_exports.dart';
import 'package:ai.labull.org.cn/blocs/gallery/gallery_bloc.dart';
import 'package:ai.labull.org.cn/models/image_generation/image_generation.dart';
import 'package:ai.labull.org.cn/models/image_variation/image_variation.dart';
import 'package:ai.labull.org.cn/models/sortable_item/sortable_item.dart';
import 'package:ai.labull.org.cn/models/user/user.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({
    Key? key,
  }) : super(key: key);

  @override
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  final ScrollController _scrollController = ScrollController();
  int pageSize = 10;
  List<SortableItem> combinedList = [];
  List<String> imageUrls = [];

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        loadImages(additioanlPageSize: 10);
      }
    });
    loadImages(additioanlPageSize: 0);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void loadImages({required int additioanlPageSize}) {
    pageSize += additioanlPageSize;
    User user = context.read<AuthBloc>().state.user!;
    context.read<GalleryBloc>().add(LoadImages(user: user, pageSize: pageSize));
  }

  void _onImageTap(int index) {
    CustomImageProvider customImageProvider =
        CustomImageProvider(imageUrls: imageUrls, initialIndex: index);
    showImageViewerPager(context, customImageProvider, onPageChanged: (page) {
      // print("Page changed to $page");
    }, onViewerDismissed: (page) {
      // print("Dismissed while on page $page");
    });
  }

  void _setGalleryImages() {
    List<ImageGeneration> imageGenerations =
        context.read<GalleryBloc>().state.imageGeneration;
    List<ImageVariation> imageVariations =
        context.read<GalleryBloc>().state.imageVariation;
    // Add ImageGenerations to the combined list
    List<SortableItem> tempCombinedList = [];
    for (var imageGen in imageGenerations) {
      tempCombinedList.add(SortableItem(imageGen.createdAt, imageGen));
    }

    // Add ImageVariations to the combined list
    for (var imageVar in imageVariations) {
      tempCombinedList.add(SortableItem(imageVar.createdAt, imageVar));
    }
    tempCombinedList
        .sort((a, b) => b.createdAtAsDateTime.compareTo(a.createdAtAsDateTime));

    setState(() {
      combinedList = tempCombinedList;
      imageUrls = getGalleryImagesList(combinedList);
    });
  }

  List<String> getGalleryImagesList(
      List<SortableItem> combinedListForGalleryImages) {
    List<String> imageUrls = [];
    for (var taskItem in combinedListForGalleryImages) {
      if (taskItem.item is ImageGeneration) {
        for (ImageGenerationResponseItem imageGenerationResponseItem
            in (taskItem.item as ImageGeneration)
                .imageGenerationResponseItems) {
          imageGenerationResponseItem.image != null
              ? imageUrls.add(imageGenerationResponseItem.image!)
              : null;
        }
      } else if (taskItem.item is ImageVariation) {
        for (ImageVariationResponseItem imageVariationResponseItem
            in (taskItem.item as ImageVariation).imageVariationResponseItems) {
          imageVariationResponseItem.image != null
              ? imageUrls.add(imageVariationResponseItem.image!)
              : null;
        }
      }
    }
    return imageUrls;
  }

  void _onGalleryStateChanged(GalleryState state) {
    if (state is GalleryStateLoadImagesSuccess) {
      _setGalleryImages();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GalleryBloc, GalleryState>(
      listener: (context, state) {
        _onGalleryStateChanged(state);
      },
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              title: const Text('谢小湖 测试版'),
              actions: [
                IconButton(
                    onPressed: () => loadImages(additioanlPageSize: 0),
                    icon: state is GalleryStateLoadImagesProgress
                        ? const CircularProgressIndicator()
                        : const Icon(Icons.refresh))
              ],
            ),
            body: Column(
              children: [
                Expanded(
                  child: GridView.builder(
                    controller: _scrollController,
                    physics: const AlwaysScrollableScrollPhysics(),
                    // Creates a scrollable grid with 3 columns.
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, // Number of columns
                      crossAxisSpacing: 4.0, // Horizontal space between cells
                      mainAxisSpacing: 4.0, // Vertical space between cells
                    ),
                    itemCount: imageUrls.length, // The number of items to show.
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        child: CachedNetworkImage(
                          imageUrl: imageUrls[index],
                        ),
                        onTap: () => _onImageTap(index),
                      ); // Using asset images
                      // For network images, use Image.network(images[index])
                    },
                  ),
                ),
                if (state is GalleryStateLoadImagesFailure)
                  const Text("加载图片失败",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold)),
                if (state is GalleryStateLoadImagesProgress)
                  const Text("正在加载图片...",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold)),
                if (state is GalleryStateLoadImagesSuccess)
                  const Text("下拉加载更多图片",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold)),
              ],
            ));
      },
    );
  }
}

class CustomImageProvider extends EasyImageProvider {
  @override
  final int initialIndex;
  final List<String> imageUrls;

  CustomImageProvider({required this.imageUrls, this.initialIndex = 0})
      : super();

  @override
  ImageProvider<Object> imageBuilder(BuildContext context, int index) {
    return CachedNetworkImageProvider(imageUrls[index]);
  }

  @override
  int get imageCount => imageUrls.length;
}
