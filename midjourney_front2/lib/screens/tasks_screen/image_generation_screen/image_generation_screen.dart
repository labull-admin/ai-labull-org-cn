import 'package:ai.labull.org.cn/blocs/bloc_exports.dart';
import 'package:ai.labull.org.cn/models/image_generation/image_generation.dart';
import 'package:ai.labull.org.cn/models/image_generation_settings/image_generation_settings.dart';
import 'package:ai.labull.org.cn/models/user/user.dart';
import 'package:ai.labull.org.cn/router/routes_name.dart';
import 'package:ai.labull.org.cn/screens/tasks_screen/image_generation_screen/image_generation_settings_screen.dart';
import 'package:ai.labull.org.cn/screens/tasks_screen/image_generation_screen/widgets/single_image_generation_view.dart';
import 'package:ai.labull.org.cn/utils/api_utils/backend_api_utils/openai_interface.dart';
import 'package:ai.labull.org.cn/widgets/prompt_loading_indicator.dart';
import 'package:ai.labull.org.cn/widgets/timed_remove_message.dart';
import 'package:flutter/material.dart';

class ImageGenerationScreen extends StatefulWidget {
  const ImageGenerationScreen({super.key});

  @override
  State<ImageGenerationScreen> createState() => _ImageGenerationScreenState();
}

class _ImageGenerationScreenState extends State<ImageGenerationScreen> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  void showErrorPopup(BuildContext context, String errorMessage) {
    final snackBar = SnackBar(
      content: Text(errorMessage),
      duration: const Duration(seconds: 3),
      backgroundColor: Colors.red,
    );

    // Find the closest ScaffoldMessenger and show the SnackBar.
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _onSendPressed(state) {
    User user = context.read<AuthBloc>().state.user!;
    String prompt = _textEditingController.text;
    context
        .read<ImageGenerationBloc>()
        .add(GenerateImages(user: user, prompt: prompt));
    _textEditingController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Generation Screen'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, imageGenerationSettingsRoute);
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: BlocBuilder<ImageGenerationBloc, ImageGenerationState>(
          builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          alignment: Alignment.bottomCenter,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: _textEditingController,
                  decoration: InputDecoration(
                    labelText: 'Enter text',
                    suffixIcon: IconButton(
                        icon: const Icon(Icons.send),
                        onPressed: () => {
                              if (state
                                  is! ImageGenerationStateGenerateImageProgress)
                                {_onSendPressed(state)}
                              else
                                {null}
                            }),
                  ),
                ),
              ),
              if (state is ImageGenerationStateGenerateImageProgress)
                (ProgressLine())
              else if (state is ImageGenerationStateGenerateImageFailure)
                Text(state.error!,
                    style: const TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold))
              else if (state is ImageGenerationStateGenerateImageSuccess)
                const Text("Image Generation Success!",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold)),
              Expanded(
                child: ListView.builder(
                  itemCount: state.imageGenerations.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleImageGenerationView(
                        imageGeneration: state.imageGenerations[
                            state.imageGenerations.length - index - 1],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
