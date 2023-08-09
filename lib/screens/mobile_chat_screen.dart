import 'package:chat_app/utils/app_colors.dart';
import 'package:chat_app/widget/chat_list.dart';
import 'package:chat_app/common/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGray3,
      appBar: AppBar(
        backgroundColor: AppColors.appBarColor,
        title: const Text("Contact Name"),
        actions: [
          IconButton(onPressed: () {

          }, icon: const Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          const Expanded(
            child: ChatList(),
          ),
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  hintText: "Type message",
                  prefixIcon: Icon(
                    Icons.emoji_emotions,
                    size: 25,
                    color: AppColors.lightGray,
                  ),
                  suffixIcon: Icon(
                    Icons.attach_file,
                    size: 25,
                    color: AppColors.lightGray,
                  ),
                  textSize: 15,
                  margin: 10,
                  enableBorder: false,
                  fillColor: Colors.white,
                  borderRadius: 20,
                ),
              ),
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
          )
        ],
      ),
    );
  }
}
