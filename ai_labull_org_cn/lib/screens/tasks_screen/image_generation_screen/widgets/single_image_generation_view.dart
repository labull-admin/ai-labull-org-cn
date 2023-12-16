import 'package:ai.labull.org.cn/models/image_generation/image_generation.dart';
import 'package:ai.labull.org.cn/utils/general_utils/url_lauch.dart';
import 'package:ai.labull.org.cn/widgets/expandable_image_view.dart';
import 'package:flutter/foundation.dart';

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
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                _imageGeneration.imageGenerationResponseItems.length, (index) {
              return SizedBox(
                width: (MediaQuery.of(context).size.width >
                        MediaQuery.of(context).size.height)
                    ? MediaQuery.of(context).size.height * 0.7
                    : MediaQuery.of(context).size.width * 0.7,
                child: Column(
                  children: [
                    _imageGeneration.ifRevisePrompt == true &&
                            _imageGeneration.imageGenerationResponseItems[index]
                                    .revisedPromptInChinese !=
                                null
                        ? Text(
                            "(已润色)${_imageGeneration.imageGenerationResponseItems[index].revisedPromptInChinese!}",
                            softWrap: true,
                          )
                        : Text(
                            _imageGeneration.prompt,
                            softWrap: true,
                          ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      height: (MediaQuery.of(context).size.width >
                              MediaQuery.of(context).size.height)
                          ? MediaQuery.of(context).size.height * 0.7
                          : MediaQuery.of(context).size.width * 0.7,
                      child: kIsWeb
                          ? GestureDetector(
                              onTap: () {
                                launchTheUrl(
                                    url: Uri.parse(_imageGeneration
                                        .imageGenerationResponseItems[index]
                                        .shortLivedImageUrl));
                              },
                              child: const Icon(
                                Icons.image_not_supported_outlined,
                                size: 100,
                              ),
                            )
                          : ExpandableImageView(
                              imageUrl: _imageGeneration
                                  .imageGenerationResponseItems[index]
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
