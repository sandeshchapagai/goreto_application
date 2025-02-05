import 'package:flutter/material.dart';
import 'package:goreto_app/core/app/constants/font_size.dart';
import 'package:goreto_app/core/app/constants/icons.dart';
import 'package:goreto_app/core/app/constants/styles.dart';
import 'package:goreto_app/presentation/widgets/custom_svg_widget.dart';

class CustomInfoWidget extends StatelessWidget {
  final String? title, subTitle, icon;
  const CustomInfoWidget({super.key, this.title, this.subTitle, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: title ?? "",
          fontSize: FontSize.kS16,
          fontWeight: FontWeight.w600,
        ),
        Row(
          children: [
            CustomSvgWidget(icon: icon ?? kElevationIcon),
            CustomText(
              text: subTitle ?? "",
              fontSize: FontSize.kS12,
            ),
          ],
        ),
      ],
    );
  }
}
