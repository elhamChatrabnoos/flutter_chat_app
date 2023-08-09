import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.onPressed,
    required this.text,
    this.buttonColor,
    this.borderColor,
    this.paddingSize,
    this.textColor,
    this.textSize,
    this.borderRadius,
    this.width,
    this.height,
    this.isLoading = false,
    this.enabled = true,
    this.leftRightMargin,
    this.topBottomMargin,
  }) : super(key: key);

  final Function()? onPressed;
  final String text;
  final Color? buttonColor;
  final Color? borderColor;
  final double? paddingSize;
  final Color? textColor;
  final double? textSize;
  final double? borderRadius;
  final double? width;
  final double? height;
  final bool? isLoading;
  final bool? enabled;
  final double? leftRightMargin;
  final double? topBottomMargin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: leftRightMargin ?? 8.0,
        left: leftRightMargin ?? 8,
        top: topBottomMargin ?? 8,
        bottom: topBottomMargin ?? 8,
      ),
      child: SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          style: ButtonStyle(
            foregroundColor:
                MaterialStateProperty.all(textColor ?? Colors.white),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 3),
              side: BorderSide(
                  color: borderColor ?? buttonColor ?? Colors.grey, width: 0.5),
            )),
            padding:
                MaterialStateProperty.all(EdgeInsets.all(paddingSize ?? 10)),
            alignment: Alignment.center,
            backgroundColor: enabled!
                ? MaterialStateProperty.all(buttonColor ?? Colors.grey)
                : MaterialStateProperty.all(
                    buttonColor?.withOpacity(0.5) ?? Colors.grey),
          ),
          onPressed: enabled != null && enabled! ? onPressed : null,
          child: isLoading!
              ? SizedBox(
                  height: textSize,
                  width: textSize,
                  child: const CircularProgressIndicator(
                    color: Colors.white,
                  ),
                )
              : CustomText(
                  text: text, fontWeight: FontWeight.bold, textSize: textSize),
        ),
      ),
    );
  }
}
