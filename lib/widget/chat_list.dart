import 'package:chat_app/widget/my_message_card.dart';
import 'package:chat_app/widget/sender_message_card.dart';
import 'package:flutter/cupertino.dart';

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
