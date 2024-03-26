import 'package:chat_app/utils/app_colors.dart';
import 'package:chat_app/common/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/widget/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({Key? key}) : super(key: key);

  static const String routeName = '/chat-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGray3,
      appBar: AppBar(
        backgroundColor: AppColors.appBarColor,
        title: const Text(
          "Contact Name",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.video_call, color: Colors.white)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.call, color: Colors.white)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert, color: Colors.white)),
        ],
      ),
      body: Column(
        children: [
          const Expanded(
            child: ChatList(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    hintText: "Type message",
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.emoji_emotions,
                        size: 25,
                        color: AppColors.lightGray,
                      ),
                    ),
                    suffixIcon: Icon(
                      Icons.attach_file,
                      size: 25,
                      color: AppColors.lightGray,
                    ),
                    textSize: 15,
                    margin: 20,
                    enableBorder: false,
                    fillColor: Colors.white,
                    borderRadius: 100,
                    padding: 10,
                  ),
                ),
                const SizedBox(width: 5),
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                      color: AppColors.appBarColor,
                      borderRadius: BorderRadius.circular(100)),
                  child: IconButton(
                    color: Colors.white,
                    onPressed: () {},
                    icon: const Icon(Icons.send),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
