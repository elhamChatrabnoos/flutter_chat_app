import 'package:chat_app/utils/app_colors.dart';
import 'package:chat_app/common/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class MyMessageCard extends StatelessWidget {
  const MyMessageCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 45),
        child: Card(
            elevation: 1,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            color: AppColors.myMessageColor,
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Stack(
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
                    child: Row(
                      children: [
                        CustomText(
                          text: "03:13",
                          textColor: AppColors.darkGray,
                          textSize: 13,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.done_all,
                          size: 20,
                          color: AppColors.darkGray,
                        )
                      ],
                    ))
              ],
            )),
      ),
    );
  }
}
