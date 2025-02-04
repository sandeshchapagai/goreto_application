import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:goreto_app/utils/theme_extensions.dart';

class CustomSvgWidget extends StatelessWidget {
  final Color? color;
  final Gradient? gradient;
  final String icon;
  final double? height;
  final Function()? onTap;
  final EdgeInsetsGeometry padding;
  final double? width;
  final BoxFit fit;
  final bool isColorFiltered;

  const CustomSvgWidget({
    super.key,
    this.color,
    this.gradient,
    required this.icon,
    this.height,
    this.onTap,
    this.padding = EdgeInsets.zero,
    this.isColorFiltered = true,
    this.width,
    this.fit = BoxFit.contain,
  });

  @override
  Widget build(BuildContext context) {
    Widget svgWidget = SvgPicture.asset(
      icon,
      fit: fit,
      colorFilter: isColorFiltered
          ? color != null
              ? ColorFilter.mode(color!, BlendMode.srcIn)
              : ColorFilter.mode(context.iconTheme.color!, BlendMode.srcIn)
          : null,
      height: height,
      width: width,
    );

    if (gradient != null) {
      svgWidget = ShaderMask(
        shaderCallback: (Rect bounds) {
          return gradient!.createShader(bounds);
        },
        blendMode: BlendMode.srcIn,
        child: svgWidget,
      );
    }

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: svgWidget,
      ),
    );
  }
}
