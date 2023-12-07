import 'package:ai.labull.org.cn/models/image_generation/image_generation.dart';
import 'package:ai.labull.org.cn/widgets/expandable_image_view.dart';
import 'package:flutter/material.dart';

class SingleImageGenerationView extends StatelessWidget {
  const SingleImageGenerationView({
    super.key,
    required ImageGeneration imageGeneration,
  }) : _imageGeneration = imageGeneration;

  final ImageGeneration _imageGeneration;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          // Background color
          border:
              Border(top: BorderSide(color: Colors.grey.shade800, width: 1.0)),
        ),
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Text(_imageGeneration.prompt),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    _imageGeneration.imageGenerationResponseItems.length,
                    (index) {
                  return Container(
                    padding: const EdgeInsets.all(8.0),
                    height: MediaQuery.of(context).size.width * 0.3,
                    child: ExpandableImageView(
                      imageUrl: _imageGeneration
                          .imageGenerationResponseItems[index]
                          .shortLivedImageUrl,
                    ),
                  );
                }),
              ),
            ),
          ],
        ));
  }
}
