import 'package:chat_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../common/widgets/custom_text.dart';

class SenderMessageCard extends StatelessWidget {
  const SenderMessageCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 45),
        child: Card(
            elevation: 1,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            color: AppColors.senderMessageColor,
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child:  Stack(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 30,
                    top: 5,
                    bottom: 30,
                  ),
                  child: Text(
                    "message",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Positioned(
                  bottom: 4,
                  right: 10,
                  child: CustomText(
                    text: "03:15",
                    textColor: AppColors.darkGray,
                    textSize: 13,
                  ),
                )
              ],
            )),
      ),
    );
  }
}
