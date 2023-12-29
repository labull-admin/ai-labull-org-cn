import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:ai.labull.org.cn/blocs/bloc_exports.dart';
import 'package:ai.labull.org.cn/routers/routes_name.dart';
import 'package:ai.labull.org.cn/screens/tasks_screen/image_variation_screen/widgets/single_image_variation_view.dart';
import 'package:ai.labull.org.cn/widgets/fake_progress_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_editor_plus/image_editor_plus.dart';
import 'package:image_editor_plus/options.dart' as o;

class ImageVariationScreen extends StatefulWidget {
  final XFile? image;
  const ImageVariationScreen({super.key, this.image});

  @override
  State<ImageVariationScreen> createState() => _ImageVariationScreenState();
}

class _ImageVariationScreenState extends State<ImageVariationScreen> {
  final ValueNotifier<XFile?> _image = ValueNotifier<XFile?>(null);
  bool? _isImageSizeValid;
  final picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    _image.addListener(() => validateImage());
    _image.value = widget.image;
  }

  void validateImage() async {
    if (_image.value != null) {
      final File imageFile = File(_image.value!.path);
      var decodedImage = await decodeImageFromList(imageFile.readAsBytesSync());
      if (decodedImage.width == decodedImage.height) {
        setState(() {
          _isImageSizeValid = true;
        });
      } else {
        setState(() {
          _isImageSizeValid = false;
        });
      }
    }
  }

  void editImage(XFile image) async {
    final File imageFile = File(_image.value!.path);
    Uint8List imageData = imageFile.readAsBytesSync();

    Uint8List editedImageData = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ImageCropper(
          image: imageData,
          availableRatios: const [o.AspectRatio(title: '1:1', ratio: 1)],
        ),
      ),
    );

    final File editedImageFile = File('${imageFile.path}_edited.png');
    editedImageFile.writeAsBytesSync(editedImageData);
    final XFile editedImage = XFile(editedImageFile.path);
    setState(() {
      _image.value = editedImage;
    });
  }

  //Image Picker function to get image from gallery
  Future getImageFromGallery() async {
    final XFile? pickedFile =
        await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image.value = pickedFile;
    });
  }

  //Image Picker function to get image from camera
  Future getImageFromCamera() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      _image.value = pickedFile;
    });
  }

  Future showOptions() async {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoActionSheet(
        actions: [
          CupertinoActionSheetAction(
            child: const Text('Photo Gallery'),
            onPressed: () {
              // close the options modal
              Navigator.of(context).pop();
              // get image from gallery
              getImageFromGallery();
            },
          ),
          CupertinoActionSheetAction(
            child: const Text('Camera'),
            onPressed: () {
              // close the options modal
              Navigator.of(context).pop();
              // get image from camera
              getImageFromCamera();
            },
          ),
        ],
      ),
    );
  }

  void _onSendPressed(state) {
    final user = context.read<AuthBloc>().state.user!;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<ImageVariationBloc>()
          .add(VariateImages(user: user, image: _image.value!));
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImageVariationBloc, ImageVariationState>(
        builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('图片变化'),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, imageVariationSettingsRoute);
              },
              icon: const Icon(Icons.settings),
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                alignment: Alignment.center,
                child: Row(
                  children: [
                    const SizedBox(width: 50),
                    Container(
                        alignment: Alignment.center,
                        width: (MediaQuery.of(context).size.width >
                                MediaQuery.of(context).size.height)
                            ? MediaQuery.of(context).size.height * 0.4
                            : MediaQuery.of(context).size.width * 0.4,
                        height: (MediaQuery.of(context).size.width >
                                MediaQuery.of(context).size.height)
                            ? MediaQuery.of(context).size.height * 0.4
                            : MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                        ),
                        child: _image.value != null
                            ? Image.file(File(_image.value!.path))
                            : const Text('没有选择图片')),
                    const SizedBox(width: 40),
                    Column(
                      children: [
                        ElevatedButton(
                            onPressed: () => showOptions(),
                            child: const Text('选择图片')),
                        const SizedBox(height: 10),
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: _image.value != null
                              ? () => setState(() {
                                    _image.value = null;
                                    _isImageSizeValid = null;
                                  })
                              : null,
                          color:
                              _image.value != null ? Colors.red : Colors.grey,
                        ),
                        const SizedBox(height: 10),
                        _isImageSizeValid == false && _image.value != null
                            ? IconButton(
                                icon: const Icon(Icons.edit),
                                onPressed: () {
                                  editImage(_image.value!);
                                },
                              )
                            : IconButton(
                                icon: const Icon(Icons.send),
                                onPressed:
                                    state is! ImageVariationStateVariateImageProgress &&
                                            _image.value != null
                                        ? () => setState(() {
                                              _onSendPressed(state);
                                            })
                                        : null,
                                color: _image.value != null
                                    ? Colors.green
                                    : Colors.grey,
                              )
                      ],
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ),
              if (_isImageSizeValid == false && _image.value != null)
                const Text(
                  '图片必须是正方形',
                  style: TextStyle(color: Colors.red),
                ),
              if (state is ImageVariationStateVariateImageProgress)
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
              else if (state is ImageVariationStateVariateImageFailure)
                Text(state.error!,
                    style: const TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold))
              else if (state is ImageVariationStateVariateImageSuccess)
                const Text("图片生成成功!",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold)),
              Expanded(
                child: ListView.builder(
                  itemCount: state.imageVariations.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleImageVariationView(
                        imageVariation: state.imageVariations[
                            state.imageVariations.length - index - 1],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
