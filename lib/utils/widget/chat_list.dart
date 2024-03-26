
import 'package:chat_app/utils/widget/sender_message_card.dart';
import 'package:flutter/cupertino.dart';

import 'my_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final List<bool> messageList = [true, true, false, false, false];
    return ListView.builder(
      itemCount: messageList.length,
      itemBuilder: (context, index) {
        if(messageList[index]){
          return const MyMessageCard();
        }
        else{
          return const SenderMessageCard();
        }
      },
    );
  }
}
