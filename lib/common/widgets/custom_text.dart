import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {Key? key,
      required this.text,
      this.textSize,
      this.fontWeight,
      this.textColor,
      this.textDecoration,
      this.decorationColor,
      this.textAlign,
      this.overflow,
      this.onClickText,
      this.padding = 0,
      this.paddingRight,
      this.maxLine,
      this.paddingTop,
      this.paddingLeft,
      this.height,
      this.paddingBottom})
      : super(key: key);

  final String text;
  final double? textSize;
  final FontWeight? fontWeight;
  final Color? textColor;
  final TextDecoration? textDecoration;
  final Color? decorationColor;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final Function()? onClickText;
  final double? padding;
  final double? paddingRight;
  final double? paddingTop;
  final double? paddingLeft;
  final double? paddingBottom;
  final int? maxLine;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: paddingRight ?? padding!,
          left: paddingLeft ?? padding!,
          top: paddingTop ?? padding!,
          bottom: paddingBottom ?? padding!),
      child: InkWell(
        onTap: onClickText,
        child: Text(
          text,
          textAlign: textAlign,
          maxLines: maxLine,
          overflow: overflow,
          style: TextStyle(
              height: height ?? 1.5,
              fontFamily: 'VazirFD',
              color: textColor,
              fontWeight: fontWeight ?? FontWeight.normal,
              decoration: textDecoration,
              decorationColor: decorationColor,
              fontSize: textSize),
        ),
      ),
    );
  }
}
