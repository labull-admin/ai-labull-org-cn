import 'package:ai.labull.org.cn/screens/chat_screen/widgets/hover_text_button.dart';
import 'package:ai.labull.org.cn/screens/setting_screen/setting_screen.dart';
import 'package:ai.labull.org.cn/utils/api_utils/backend_api_utils/bedrock.dart';
import 'package:ai.labull.org.cn/utils/general_utils/url_lauch.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Map<String, dynamic>> _messages = [
    // {
    //   "message_data": {
    //     "ResponseMetadata": {
    //       "RequestId": "41a3683a-7bc2-47af-9b17-fcb172687005",
    //       "HTTPStatusCode": 200,
    //       "HTTPHeaders": {
    //         "date": "Wed, 15 May 2024 13:40:11 GMT",
    //         "content-type": "application/json",
    //         "content-length": "8846",
    //         "connection": "keep-alive",
    //         "x-amzn-requestid": "41a3683a-7bc2-47af-9b17-fcb172687005"
    //       },
    //       "RetryAttempts": 0
    //     },
    //     "citations": [
    //       {
    //         "generatedResponsePart": {
    //           "textResponsePart": {
    //             "span": {"end": 126, "start": 0},
    //             "text":
    //                 "根据搜索结果，如果成衣衣长长了超出标准公差范围，品质部应该将这些衣服退回返工。具体标准是:\n衫脚/袖咀长度超出以下范围应退回返工:\n3CM以下超出+0.1CM\n3CM-6CM超出+0.2CM\n6CM-10CM超出+0.3CM\n10CM以上超出+0.6CM"
    //           }
    //         },
    //         "retrievedReferences": [
    //           {
    //             "content": {
    //               "text":
    //                   "5.7.3  \t肩阔  \t±1cm  \t范围内接收，范围外退回   \t5.7.4  \t挂肩  \t±0.5cm  \t范围内接收，范围外退回   \t5.7.5  \t袖长  \t±1cm  \t范围内接收，范围外退回   \t5.7.6  \t领深  \t±0.5cm  \t范围内接收，范围外退回   \t5.7.7  \t领外宽  \t±0.5cm  \t范围内接收，范围外退回   \t5.7.8  \t背肩三角形  \t±0.5cm  \t两边相差0.5cm可接收   \t5.7.9  \tV领  \t不允许  \t轻微可接收，严重退回返工   \t5.7.10  \t胸贴起蛇  \t不允许  \t轻微可接收，严重退回返工   \t5.7.11  \t露底贴  \t不允许  \t轻微可接收，严重退回返工   \t5.7.12  \t间色无直顺  \t不允许  \t轻微可接收，严重退回返工   \t5.7.13  \t反领领尖不对称  \t不允许  \t轻微可接收，严重退回返工   \t5.7.14  \t衫身扭曲  \t不允许  \t轻微可接收，严重退回返工   \t5.7.15  \t起皱  \t不允许  \t轻微可接收，严重退回返工   \t5.7.16  \t图案变形  \t不允许  \t轻微可接收，严重退回返工     6、记录表单   6.1 《每日抽检记录报告》   6.2 《质量信息反馈单"
    //             },
    //             "location": {
    //               "s3Location": {
    //                 "uri":
    //                     "s3://labull-kb-quality-department/QPZ07烘干、整烫检验规范与检验标准.doc"
    //               },
    //               "type": "S3"
    //             },
    //             "metadata": {
    //               "x-amz-bedrock-kb-source-uri":
    //                   "s3://labull-kb-quality-department/QPZ07烘干、整烫检验规范与检验标准.doc"
    //             }
    //           },
    //           {
    //             "content": {
    //               "text":
    //                   "5.7.2  \t衫脚/袖咀  \t3CM一以下:+0.1CM                 3CM-6CM:+0.2CM             6CM-10CM:+0.3CM            10CM以上：+0.6CM   \t上梳尽结，10支横拉字码±0.2cm，超此范围返工；两边与中间相差（5CM以下：0.3CM;5CM以上：0.5CM以内）；前后、左右袖咀逆差不可超过标准公差范围；另配织衫脚度高要比原机织脚-0.1CM。   \t5.7.3  \t下摆、吓栏  \t上梳松、歪波、反元仝  \t轻微接收，严重退回返工。   \t5.7.4  \t领 度 高  \t3CM一以下:+0.1CM                 3CM-6CM:+0.2CM             6CM-10CM:+0.3CM            10CM以上：+0.6CM    \t领两边与中间相差；低领及T恤领,度高6CM以下相差0.3CM以上；高领与双层领，度高6CM以上相差0.5CM以上返工；以字码结合度高;三平、四平、打鸡领字码横拉在±0.1cm以内；1×1、2×1圆领/V领字码不可偏结，松0.2cm以内。   \t5.7.5  \t胸贴度高  \t3CM以下：±0.1CM             3CM-5CM:±0.2CM  \t上梳尽结，以字码结合度高；左右要对称，超此范围返工。   \t5.7.6  \t袖中贴、前中贴、肩贴  \t1CM以下：±0.1CM             3CM-5CM:±0.2CM               \t超此范围返工，以字码结合高度，字码松结在0.1cm以内。   \t5.7.7  \t领拉力  \t元领：拉开36cm以上              小V领：拉开45cm以上  \t圆领车拉链36cm以上，低于此标准一律返工。   \t5.7.8  \t吓栏  \t放眼过大、过小  \t经确认后另行通知处置方法。   \t  \t  \t无放眼  \t一律返工。   \t5.7.9  \t毛料  \t线骨、粗细毛  \t内销：放平不明显凹凸接受 。                外贸：每个位置阔度超过1cm退回。   \t5.7.10  \t收膊花/小V领  \t膊收花位、领分边收针位、拉力在21cm以上  \t拉力在21cm以上，两边拉力相差1.3cm以内。   \t5.7.11  \t单边吓栏、通底吓栏  \t间纱粗细要与主纱相近，中间加鱼丝1专  \t间色太细或无加鱼丝一律返工。   \t5.7.12  \t油渍、脏  \t不允许  \t一律返工，不可用腐蚀性强的洗剂洗片。"
    //             },
    //             "location": {
    //               "s3Location": {
    //                 "uri":
    //                     "s3://labull-kb-quality-department/QPZ03织片检验规范与检验标准.doc"
    //               },
    //               "type": "S3"
    //             },
    //             "metadata": {
    //               "x-amz-bedrock-kb-source-uri":
    //                   "s3://labull-kb-quality-department/QPZ03织片检验规范与检验标准.doc"
    //             }
    //           }
    //         ]
    //       },
    //       {
    //         "generatedResponsePart": {
    //           "textResponsePart": {
    //             "span": {"end": 209, "start": 128},
    //             "text":
    //                 "如果缸差大了超出标准公差范围,品质部也应该将这些衣服退回返工。具体标准是:\n前后衣长逆差不可超过1CM\n左右袖长逆差不可超过1CM\n如果超出这个范围,应该退回返工。"
    //           }
    //         },
    //         "retrievedReferences": [
    //           {
    //             "content": {
    //               "text":
    //                   "5.7.3  \t肩阔  \t±1cm  \t范围内接收，范围外退回   \t5.7.4  \t挂肩  \t±0.5cm  \t范围内接收，范围外退回   \t5.7.5  \t袖长  \t±1cm  \t范围内接收，范围外退回   \t5.7.6  \t领深  \t±0.5cm  \t范围内接收，范围外退回   \t5.7.7  \t领外宽  \t±0.5cm  \t范围内接收，范围外退回   \t5.7.8  \t背肩三角形  \t±0.5cm  \t两边相差0.5cm可接收   \t5.7.9  \tV领  \t不允许  \t轻微可接收，严重退回返工   \t5.7.10  \t胸贴起蛇  \t不允许  \t轻微可接收，严重退回返工   \t5.7.11  \t露底贴  \t不允许  \t轻微可接收，严重退回返工   \t5.7.12  \t间色无直顺  \t不允许  \t轻微可接收，严重退回返工   \t5.7.13  \t反领领尖不对称  \t不允许  \t轻微可接收，严重退回返工   \t5.7.14  \t衫身扭曲  \t不允许  \t轻微可接收，严重退回返工   \t5.7.15  \t起皱  \t不允许  \t轻微可接收，严重退回返工   \t5.7.16  \t图案变形  \t不允许  \t轻微可接收，严重退回返工     6、记录表单   6.1 《每日抽检记录报告》   6.2 《质量信息反馈单"
    //             },
    //             "location": {
    //               "s3Location": {
    //                 "uri":
    //                     "s3://labull-kb-quality-department/QPZ07烘干、整烫检验规范与检验标准.doc"
    //               },
    //               "type": "S3"
    //             },
    //             "metadata": {
    //               "x-amz-bedrock-kb-source-uri":
    //                   "s3://labull-kb-quality-department/QPZ07烘干、整烫检验规范与检验标准.doc"
    //             }
    //           },
    //           {
    //             "content": {
    //               "text":
    //                   "5.7.2  \t衫脚/袖咀  \t3CM一以下:+0.1CM                 3CM-6CM:+0.2CM             6CM-10CM:+0.3CM            10CM以上：+0.6CM   \t上梳尽结，10支横拉字码±0.2cm，超此范围返工；两边与中间相差（5CM以下：0.3CM;5CM以上：0.5CM以内）；前后、左右袖咀逆差不可超过标准公差范围；另配织衫脚度高要比原机织脚-0.1CM。   \t5.7.3  \t下摆、吓栏  \t上梳松、歪波、反元仝  \t轻微接收，严重退回返工。   \t5.7.4  \t领 度 高  \t3CM一以下:+0.1CM                 3CM-6CM:+0.2CM             6CM-10CM:+0.3CM            10CM以上：+0.6CM    \t领两边与中间相差；低领及T恤领,度高6CM以下相差0.3CM以上；高领与双层领，度高6CM以上相差0.5CM以上返工；以字码结合度高;三平、四平、打鸡领字码横拉在±0.1cm以内；1×1、2×1圆领/V领字码不可偏结，松0.2cm以内。   \t5.7.5  \t胸贴度高  \t3CM以下：±0.1CM             3CM-5CM:±0.2CM  \t上梳尽结，以字码结合度高；左右要对称，超此范围返工。   \t5.7.6  \t袖中贴、前中贴、肩贴  \t1CM以下：±0.1CM             3CM-5CM:±0.2CM               \t超此范围返工，以字码结合高度，字码松结在0.1cm以内。   \t5.7.7  \t领拉力  \t元领：拉开36cm以上              小V领：拉开45cm以上  \t圆领车拉链36cm以上，低于此标准一律返工。   \t5.7.8  \t吓栏  \t放眼过大、过小  \t经确认后另行通知处置方法。   \t  \t  \t无放眼  \t一律返工。   \t5.7.9  \t毛料  \t线骨、粗细毛  \t内销：放平不明显凹凸接受 。                外贸：每个位置阔度超过1cm退回。   \t5.7.10  \t收膊花/小V领  \t膊收花位、领分边收针位、拉力在21cm以上  \t拉力在21cm以上，两边拉力相差1.3cm以内。   \t5.7.11  \t单边吓栏、通底吓栏  \t间纱粗细要与主纱相近，中间加鱼丝1专  \t间色太细或无加鱼丝一律返工。   \t5.7.12  \t油渍、脏  \t不允许  \t一律返工，不可用腐蚀性强的洗剂洗片。"
    //             },
    //             "location": {
    //               "s3Location": {
    //                 "uri":
    //                     "s3://labull-kb-quality-department/QPZ03织片检验规范与检验标准.doc"
    //               },
    //               "type": "S3"
    //             },
    //             "metadata": {
    //               "x-amz-bedrock-kb-source-uri":
    //                   "s3://labull-kb-quality-department/QPZ03织片检验规范与检验标准.doc"
    //             }
    //           }
    //         ]
    //       }
    //     ],
    //     "output": {
    //       "text":
    //           "根据搜索结果，如果成衣衣长长了超出标准公差范围，品质部应该将这些衣服退回返工。具体标准是:\n衫脚/袖咀长度超出以下范围应退回返工:\n3CM以下超出+0.1CM\n3CM-6CM超出+0.2CM\n6CM-10CM超出+0.3CM\n10CM以上超出+0.6CM 如果缸差大了超出标准公差范围,品质部也应该将这些衣服退回返工。具体标准是:\n前后衣长逆差不可超过1CM\n左右袖长逆差不可超过1CM\n如果超出这个范围,应该退回返工。"
    //     },
    //     "sessionId": "733a5747-1c39-460a-ae29-1594ab126610"
    //   },
    //   "isUser": false
    // }
  ];
  ValueNotifier<String> counter = ValueNotifier<String>('');

  final TextEditingController _controller = TextEditingController();
  String? sessionId;

  void _sendMessage() async {
    final text = _controller.text;
    // Add the user's message and clear the input field
    setState(() {
      _messages.add({"message_data": text, "isUser": true});
      _controller
          .clear(); // Clear the text field here after the message is sent
    });

    // Await the response from your API call
    Map<String, dynamic> response_data =
        await invokeKnowledgeBaseAgent(prompt: text);
    // Add the response to the messages list
    setState(() {
      _messages.add({"message_data": response_data, "isUser": false});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat Page"),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingScreen()),
              );
            },
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return _buildMessageItem(
                    message_data: _messages[index]["message_data"],
                    isUser: _messages[index]["isUser"]);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: "Type a message",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMessageItem({
    required dynamic message_data,
    required bool isUser,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: isUser ? Colors.greenAccent : Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(12.0),
      ),
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment:
            isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            isUser ? message_data : message_data['output']['text'],
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
          if (!isUser)
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: (message_data['citations'] as List)
                  .asMap()
                  .entries
                  .map((citationsEntry) {
                int index = citationsEntry.key;

                return Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("来源${index + 1}"),
                    ...((citationsEntry.value["retrievedReferences"] as List)
                        .asMap()
                        .entries
                        .map((retrievedReferencesEntry) {
                      int index = retrievedReferencesEntry.key;
                      String? fileName;
                      String? bucketName;
                      String? filePath;
                      if (retrievedReferencesEntry.value["location"]['type'] ==
                          "S3") {
                        Uri location = Uri.parse(retrievedReferencesEntry
                            .value["location"]['s3Location']['uri']);
                        fileName = location.pathSegments.last;
                        bucketName = location.host;
                        filePath = location.pathSegments.join('/');
                      }

                      String referenceMessage =
                          '$fileName \n\n ${retrievedReferencesEntry.value["content"]["text"]}';

                      Uri fileUrl = Uri.parse(
                          "https://$bucketName.s3.amazonaws.com/$filePath");
                      return Tooltip(
                          message: referenceMessage,
                          child: HoverTextButton(
                              onPressed: () {
                                launchTheUrl(url: fileUrl);
                              },
                              buttonText: '[${index + 1}]'));
                    }).toList()), // Convert the iterable to a list
                  ],
                );
              }).toList(),
            ),
        ],
      ),
    );
  }
}
