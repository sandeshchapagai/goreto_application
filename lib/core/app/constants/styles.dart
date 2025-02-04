import 'package:flutter/material.dart';
import 'package:goreto_app/utils/theme_extensions.dart';

import 'app_text.dart';

TextStyle customTextStyle(
    {FontWeight? fontWeight,
    double? fontSize,
    Color? color,
    TextOverflow? textOverflow,
    TextDecoration? txtDecoration = TextDecoration.none,
    double letterSpacing = 0,
    final double? textHeight}) {
  return TextStyle(
    fontWeight: fontWeight,
    fontSize: fontSize,
    decoration: txtDecoration,
    color: color,
    letterSpacing: letterSpacing,
    overflow: textOverflow,
    fontFamily: AppText.fontFamily,
    height: textHeight,
  );
}

class CustomGradientText extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final EdgeInsetsGeometry padding;
  final int? maxLines;
  final Gradient gradient;
  const CustomGradientText({
    Key? key,
    required this.text,
    required this.gradient,
    this.fontWeight,
    this.maxLines,
    this.padding = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: CustomText(
        text: text,
        padding: padding,
        fontWeight: fontWeight,
        maxLines: maxLines,
      ),
    );
  }
}

class CustomRichText extends StatelessWidget {
  final String? firstText;
  final String? secondText;
  final Color? firstColor, secondColor;
  final TextStyle? style;
  final TextStyle? firstTextStyle;
  final TextStyle? secondTextStyle;
  final TextAlign textAlign;
  final List<TextSpan>? customTextSpans;

  const CustomRichText({
    Key? key,
    this.firstText,
    this.secondText,
    this.style,
    this.firstTextStyle,
    this.secondTextStyle,
    this.textAlign = TextAlign.center,
    this.firstColor,
    this.secondColor,
    this.customTextSpans,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: textAlign,
      TextSpan(
        style: style ?? context.textTheme.bodyMedium,
        children: customTextSpans ??
            [
              TextSpan(
                text: firstText,
                style: firstTextStyle ??
                    customTextStyle(
                      color: firstColor,
                    ),
              ),
              TextSpan(
                text: secondText,
                style: secondTextStyle ??
                    customTextStyle(
                      color: secondColor,
                    ),
              ),
            ],
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  final String text;
  final Color? color, decorationColor;
  final FontWeight? fontWeight;
  final EdgeInsetsGeometry padding;
  final int? maxLines;
  final double? fontSize;
  final double letterSpacing;
  final TextOverflow textOverflow;
  final List<Shadow>? shadows;
  final TextDecoration? textDecoration;
  final TextAlign? textAlign;
  final TextStyle? style;
  final Function()? onTap;
  final double? textHeight;

  const CustomText({
    super.key,
    required this.text,
    this.color,
    this.fontWeight,
    this.maxLines,
    this.padding = EdgeInsets.zero,
    this.fontSize,
    this.letterSpacing = 0.1,
    this.textOverflow = TextOverflow.ellipsis,
    this.shadows,
    this.textDecoration = TextDecoration.none,
    this.textAlign = TextAlign.justify,
    this.onTap,
    this.style,
    this.textHeight,
    this.decorationColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: padding,
          child: Text(
            text,
            textAlign: textAlign,
            style: style ??
                context.textTheme.bodyMedium?.copyWith(
                    color: color,
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                    height: textHeight,
                    decoration: textDecoration,
                    decorationColor: decorationColor),
            maxLines: maxLines,
            overflow: maxLines != null ? textOverflow : null,
          ),
        ));
  }
}
