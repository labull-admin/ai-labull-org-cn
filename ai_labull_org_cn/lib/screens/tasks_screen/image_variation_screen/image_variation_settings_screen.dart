import 'package:ai.labull.org.cn/blocs/bloc_exports.dart';
import 'package:ai.labull.org.cn/models/image_variation_settings/image_variation_settings.dart';
import 'package:flutter/material.dart';

class ImageVariationSettingsScreen extends StatefulWidget {
  const ImageVariationSettingsScreen({super.key});

  @override
  State<ImageVariationSettingsScreen> createState() =>
      _ImageVariationSettingsScreenState();
}

class _ImageVariationSettingsScreenState
    extends State<ImageVariationSettingsScreen> {
  late ImageVariationSettings _imageVariationSettings;
  void showErrorPopup(BuildContext context, String errorMessage) {
    final snackBar = SnackBar(
      content: Text(errorMessage),
      duration: const Duration(seconds: 3),
      backgroundColor: Colors.red,
    );

    // Find the closest ScaffoldMessenger and show the SnackBar.
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  void initState() {
    super.initState();
    _imageVariationSettings = context
        .read<ImageVariationBloc>()
        .state
        .imageVariationSettings
        .copyWith();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImageVariationBloc, ImageVariationState>(
        builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('设置'),
        ),
        body: Center(
          child: Column(children: [
            // size selection row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '图片分辨率: ',
                ),
                DropdownButton(
                  value: _imageVariationSettings.size,
                  items: ImageVariationSettings.allowedSizes
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      try {
                        _imageVariationSettings.size = newValue!;
                      } catch (e) {
                        showErrorPopup(context, e.toString());
                      }
                    });
                    BlocProvider.of<ImageVariationBloc>(context).add(
                        ImageVariationSettingsChange(
                            imageVariationSettings: _imageVariationSettings));
                  },
                )
              ],
            ),
            //Number of image generates at a time
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '图片数量: ',
                ),
                DropdownButton(
                  value: _imageVariationSettings.n,
                  items: ImageVariationSettings.allowedNs
                      .map<DropdownMenuItem<int>>((int value) {
                    return DropdownMenuItem<int>(
                      value: value,
                      child: Text(value.toString()),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      try {
                        _imageVariationSettings.n = newValue!;
                      } catch (e) {
                        showErrorPopup(context, e.toString());
                      }
                    });
                    BlocProvider.of<ImageVariationBloc>(context).add(
                        ImageVariationSettingsChange(
                            imageVariationSettings: _imageVariationSettings));
                  },
                )
              ],
            ),
          ]),
        ),
      );
    });
  }
}
