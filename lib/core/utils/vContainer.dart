import 'package:flutter/cupertino.dart';

class AContainer extends StatelessWidget {
  const AContainer(
      {super.key,
      this.color,
      this.function,
      this.height,
      this.width,
      this.child,
      this.borderRadius,
      this.padding,
      this.margin,
      this.border,
      this.shadow,
      this.gradient,
      this.decorationImage, this.alignment});

  final Color? color;
  final double? height;
  final double? width;
  final Widget? child;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BoxBorder? border;
  final Function()? function;
  final List<BoxShadow>? shadow;
  final Gradient? gradient;
  final AlignmentGeometry? alignment;
  final DecorationImage? decorationImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        alignment: alignment ?? Alignment.center,
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
            image: decorationImage,
            gradient: gradient,
            boxShadow: shadow,
            borderRadius: borderRadius,
            border: border,
            color: color),
        height: height,
        width: width,
        child: child,
      ),
    );
  }
}
