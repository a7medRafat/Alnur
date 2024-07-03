import 'package:flutter/material.dart';
import '../../config/style/app_fonts.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key,
      required this.function,
      required this.text,
      this.btnColor,
      this.width,
      this.radius,
      this.txtColor,
      this.height});

  final Function() function;
  final String text;
  final Color? btnColor;
  final Color? txtColor;
  final double? width;
  final double? height;

  final BorderRadius? radius;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      splashColor: Colors.transparent,
      shape: RoundedRectangleBorder(
          borderRadius: radius ?? BorderRadius.circular(50)),
      elevation: 0,
      onPressed: function,
      height: height,
      color: btnColor,
      minWidth: width ?? double.infinity,
      textColor: txtColor,
      child: Text(text.toUpperCase(), style: AppFonts.bodyText1),
    );
  }
}
