import 'package:flutter/material.dart';
import 'package:goreto_app/core/app/constants/dimensions.dart';
import 'package:goreto_app/core/app/constants/icons.dart';
import 'package:goreto_app/presentation/widgets/custom_svg_widget.dart';
import 'package:goreto_app/utils/theme_extensions.dart';

import '../../../../../../core/app/constants/styles.dart';

class HomeSearchWidget extends StatelessWidget {
  const HomeSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: context.colors.primary!),
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CustomSvgWidget(
                icon: kSearchIcon,
                height: 20,
              ),
              kHSizedBox1,
              CustomText(
                text: "Find cities",
                fontWeight: FontWeight.w600,
                color: context.colors.caption,
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                border: Border.all(color: context.colors.primary!),
                borderRadius: BorderRadius.circular(100)),
            child: CustomSvgWidget(
              icon: kSettingIcon,
              height: 20,
            ),
          )
        ],
      ),
    );
  }
}
