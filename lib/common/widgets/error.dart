import 'package:chat_app/common/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key, required this.errorMessage}) : super(key: key);

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Center(child: CustomText(text: errorMessage));
  }
}
