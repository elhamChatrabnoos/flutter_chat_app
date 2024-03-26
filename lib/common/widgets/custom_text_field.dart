import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.onChanged,
    this.suffixIcon,
    this.correctFormat,
    this.secure,
    this.onTapIcon,
    this.hintText,
    this.initialValue,
    this.inputFormatters,
    this.checkValidation,
    this.fillColor,
    this.borderColor,
    this.labelText,
    this.borderRadius,
    this.keyboardType,
    this.controller,
    this.textSize,
    this.width,
    this.padding,
    this.height,
    this.suffixText,
    this.contentPadding,
    required this.enableBorder,
    this.fontWeight,
    this.textAlign,
    this.textColor,
    this.prefix,
    this.hintColor,
    this.margin,
    this.autofocus,
    this.prefixIcon,
    this.globalKey,
    this.maxLength,
    this.suffix,
    this.prefixStyle,
    this.labelColor,
    this.cursorColor,
    this.readOnly,
    this.onTap, this.marginLeftRight, this.marginTopBottom,
  }) : super(key: globalKey);

  final Function(String?)? onChanged;
  final Function()? onTapIcon;
  final bool? secure;
  final bool? readOnly;
  final Icon? suffixIcon;
  final bool? correctFormat;
  final String? hintText;
  final String? labelText;
  final String? initialValue;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? checkValidation;
  final Color? fillColor;
  final Color? borderColor;
  final double? borderRadius;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final double? textSize;
  final double? width;
  final double? height;
  final double? padding;
  final int? maxLength;
  final String? suffixText;
  final EdgeInsetsGeometry? contentPadding;
  final bool enableBorder;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final Color? textColor;
  final Color? hintColor;
  final Widget? prefix;
  final double? margin;
  final bool? autofocus;
  final Widget? prefixIcon;
  final Widget? suffix;
  final GlobalKey? globalKey;
  final TextStyle? prefixStyle;
  final Color? labelColor;
  final Color? cursorColor;
  final void Function()? onTap;
  final double? marginLeftRight;
  final double? marginTopBottom;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: marginTopBottom ?? 0,
        bottom: marginTopBottom ?? 0,
        right: marginLeftRight ?? 0,
        left: marginLeftRight ?? 0,
      ),
      alignment: Alignment.center,
      height: height,
      width: width,
      child: TextFormField(
        readOnly: readOnly ?? false,
        onTap: onTap,
        key: globalKey,
        cursorColor: cursorColor,
        autofocus: autofocus ?? false,
        textAlign: textAlign ?? TextAlign.start,
        autovalidateMode: AutovalidateMode.disabled,
        style: TextStyle(
          fontSize: textSize ?? 12,
          fontWeight: fontWeight,
          color: textColor,
        ),
        keyboardType: keyboardType,
        controller: controller,
        inputFormatters: inputFormatters,
        initialValue: initialValue,
        onChanged: onChanged,
        validator: checkValidation,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: contentPadding,
          suffixText: suffixText,
          suffix: suffix,
          labelText: labelText,
          labelStyle: TextStyle(color: labelColor),
          hintText: hintText,
          hintStyle: TextStyle(color: hintColor),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: enableBorder ? 1 : 0,
                  color: borderColor ?? Colors.grey),
              borderRadius: BorderRadius.circular(borderRadius ?? 12)),
          border: InputBorder.none,
          filled: true,
          fillColor: fillColor,
          suffixIcon: suffixIcon,
          errorBorder: enableBorder
              ? OutlineInputBorder(
                  borderSide: const BorderSide(
                      width: 1, color: Color.fromARGB(190, 255, 0, 0)),
                  borderRadius: BorderRadius.circular(15))
              : null,
          focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  width: 1, color: Color.fromARGB(190, 255, 0, 0)),
              borderRadius: BorderRadius.circular(15)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 12),
              borderSide: BorderSide(
                color: borderColor ?? const Color.fromARGB(190, 145, 141, 141),
                width: 1,
              )),
          prefix: prefix,
          prefixIcon: prefixIcon,
          prefixStyle: prefixStyle,
          prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
        ),
        obscureText: secure != null ? secure! : false,
        maxLength: maxLength,
      ),
    );
  }
}
