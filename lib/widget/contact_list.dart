import 'package:chat_app/screens/mobile_chat_screen.dart';
import 'package:chat_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MobileChatScreen(),
              ),
            );
          },
          title: const Text("The title"),
          subtitle: const Text("The subtitle"),
          leading: CircleAvatar(
            backgroundColor: AppColors.lightGray2,
            child: Icon(Icons.person, color: AppColors.lightGray),
          ),
        );
      },
    );
  }
}
