import 'package:flutter/material.dart';
import 'package:goreto_app/core/app/constants/dimensions.dart';
import 'package:goreto_app/core/app/constants/font_size.dart';
import 'package:goreto_app/core/app/constants/icons.dart';
import 'package:goreto_app/core/app/constants/styles.dart';
import 'package:goreto_app/utils/theme_extensions.dart';

import '../../../../../../../widgets/custom_svg_widget.dart';

class CardProfileWidget extends StatelessWidget {
  const CardProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Mardi Himal",
              fontWeight: FontWeight.w600,
              fontSize: FontSize.kS27,
            ),
            CustomText(text: "Gandaki Province, Nepal"),
            Row(
              children: [
                Icon(
                  size: 15,
                  Icons.star,
                  color: context.colors.yellow,
                ),
                CustomText(text: "4.8"),
                kHSizedBox1,
                CustomText(text: "Hard"),
              ],
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: context.colors.primary,
          ),
          child: Row(
            children: [
              CustomSvgWidget(
                height: 20,
                icon: kMapIcon,
                color: context.colors.white,
              ),
              kHSizedBox1,
              CustomText(
                text: "Map",
                color: context.colors.white,
                fontWeight: FontWeight.w500,
              )
            ],
          ),
        ),
      ],
    );
  }
}
