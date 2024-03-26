import 'package:chat_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../utils/widget/contact_list.dart';


class MobileChatListScreen extends StatelessWidget {
  const MobileChatListScreen({Key? key}) : super(key: key);

  static const String routeName = '/chat-list-screen';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.appBarColor,
          title: const Text("Chat me"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {
              },
              icon: const Icon(Icons.more_vert),
            ),
          ],
          bottom: TabBar(
            indicatorWeight: 2,
            unselectedLabelColor: AppColors.lightGray,
            indicatorColor: AppColors.lightGray3,
            labelColor: AppColors.lightGray3,
            tabs: const [
              Tab(text: "Chats"),
              Tab(text: "Status"),
              Tab(text: "Calls"),
            ],
          ),
        ),
        body: const TabBarView(children: [
          ContactList(),
          Column(),
          Column(),
        ]),
      ),
    );
  }
}
