import 'package:ai.labull.org.cn/blocs/bloc_exports.dart';
import 'package:ai.labull.org.cn/models/image_generation_settings/image_generation_settings.dart';
import 'package:flutter/material.dart';

class ImageGenerationSettingsScreen extends StatefulWidget {
  const ImageGenerationSettingsScreen({super.key});

  @override
  State<ImageGenerationSettingsScreen> createState() =>
      _ImageGenerationSettingsScreenState();
}

class _ImageGenerationSettingsScreenState
    extends State<ImageGenerationSettingsScreen> {
  late ImageGenerationSettings _imageGenerationSettings;
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
    _imageGenerationSettings = context
        .read<ImageGenerationBloc>()
        .state
        .imageGenerationSettings
        .copyWith();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImageGenerationBloc, ImageGenerationState>(
        builder: (context, state) {
      // print(state.imageGenerationSettings);
      return Scaffold(
        appBar: AppBar(
          title: const Text('Image Generation Settings'),
        ),
        body: Center(
          child: Column(children: [
            // model selection row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Model: ',
                ),
                DropdownButton(
                  value: _imageGenerationSettings.model,
                  items: ImageGenerationSettings.allowedModels
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      try {
                        _imageGenerationSettings.model = newValue!;
                      } catch (e) {
                        showErrorPopup(context, e.toString());
                      }
                    });
                    BlocProvider.of<ImageGenerationBloc>(context).add(
                        ImageGenerationSettingsChange(
                            imageGenerationSettings: _imageGenerationSettings));
                  },
                )
              ],
            ),
            // size selection row

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Size: ',
                ),
                DropdownButton(
                  value: _imageGenerationSettings.size,
                  items: ImageGenerationSettings.allowedSizes
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      try {
                        _imageGenerationSettings.size = newValue!;
                      } catch (e) {
                        showErrorPopup(context, e.toString());
                      }
                    });
                    BlocProvider.of<ImageGenerationBloc>(context).add(
                        ImageGenerationSettingsChange(
                            imageGenerationSettings: _imageGenerationSettings));
                  },
                )
              ],
            ),
            // quality selection row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Quality: ',
                ),
                DropdownButton(
                  value: _imageGenerationSettings.quality,
                  items: ImageGenerationSettings.allowedQualities
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      try {
                        _imageGenerationSettings.quality = newValue!;
                      } catch (e) {
                        showErrorPopup(context, e.toString());
                      }
                    });
                    BlocProvider.of<ImageGenerationBloc>(context).add(
                        ImageGenerationSettingsChange(
                            imageGenerationSettings: _imageGenerationSettings));
                  },
                )
              ],
            ),
            //Number of image generates at a time
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'N: ',
                ),
                DropdownButton(
                  value: _imageGenerationSettings.n,
                  items: ImageGenerationSettings.allowedNs
                      .map<DropdownMenuItem<int>>((int value) {
                    return DropdownMenuItem<int>(
                      value: value,
                      child: Text(value.toString()),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      try {
                        _imageGenerationSettings.n = newValue!;
                      } catch (e) {
                        showErrorPopup(context, e.toString());
                      }
                    });
                    BlocProvider.of<ImageGenerationBloc>(context).add(
                        ImageGenerationSettingsChange(
                            imageGenerationSettings: _imageGenerationSettings));
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
