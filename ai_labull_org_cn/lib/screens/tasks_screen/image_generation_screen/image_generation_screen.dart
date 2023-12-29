import 'package:ai.labull.org.cn/blocs/bloc_exports.dart';
import 'package:ai.labull.org.cn/models/user/user.dart';
import 'package:ai.labull.org.cn/routers/routes_name.dart';
import 'package:ai.labull.org.cn/screens/tasks_screen/image_generation_screen/widgets/single_image_generation_view.dart';
import 'package:ai.labull.org.cn/utils/general_utils/url_lauch.dart';
import 'package:ai.labull.org.cn/widgets/fake_progress_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
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

  void _onSendPressed(state) {
    User user = context.read<AuthBloc>().state.user!;

    context
        .read<ImageGenerationBloc>()
        .add(GenerateImages(user: user, prompt: _textEditingController.text));
    _textEditingController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('文字生成图片'),
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
                    labelText: '你想生成什么...',
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.send),
                      onPressed: () => {
                        if (state is! ImageGenerationStateGenerateImageProgress)
                          {_onSendPressed(state)}
                        else
                          {null}
                      },
                    ),
                  ),
                ),
              ),
              if (state is ImageGenerationStateGenerateImageProgress)
                Column(
                  children: [
                    const Text("正在生成图片...",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold)),
                    (FakeProgressLine(
                      duration: 20,
                    )),
                  ],
                )
              else if (state is ImageGenerationStateGenerateImageFailure)
                Text(state.error!,
                    style: const TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold))
              else if (state is ImageGenerationStateGenerateImageSuccess)
                const Text("图片生成成功!",
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
