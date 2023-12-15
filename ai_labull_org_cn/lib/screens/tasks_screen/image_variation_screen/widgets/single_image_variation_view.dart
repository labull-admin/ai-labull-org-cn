import 'package:ai.labull.org.cn/models/image_variation/image_variation.dart';
import 'package:ai.labull.org.cn/widgets/expandable_image_view.dart';

import 'package:flutter/material.dart';

class SingleImageVariationView extends StatelessWidget {
  const SingleImageVariationView({
    super.key,
    required ImageVariation imageVariation,
  }) : _imageVariation = imageVariation;

  final ImageVariation _imageVariation;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          // Background color
          border:
              Border(top: BorderSide(color: Colors.grey.shade800, width: 1.0)),
        ),
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                _imageVariation.imageVariationResponseItems.length, (index) {
              return SizedBox(
                width: (MediaQuery.of(context).size.width >
                        MediaQuery.of(context).size.height)
                    ? MediaQuery.of(context).size.height * 0.7
                    : MediaQuery.of(context).size.width * 0.7,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      height: (MediaQuery.of(context).size.width >
                              MediaQuery.of(context).size.height)
                          ? MediaQuery.of(context).size.height * 0.7
                          : MediaQuery.of(context).size.width * 0.7,
                      child: ExpandableImageView(
                        imageUrl: _imageVariation
                            .imageVariationResponseItems[index]
                            .shortLivedImageUrl,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ));
  }
}
