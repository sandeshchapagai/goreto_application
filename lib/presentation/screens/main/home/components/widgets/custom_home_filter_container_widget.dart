import 'package:flutter/material.dart';
import 'package:goreto_app/core/app/constants/dimensions.dart';
import 'package:goreto_app/core/app/constants/styles.dart';
import 'package:goreto_app/presentation/widgets/custom_svg_widget.dart';
import 'package:goreto_app/utils/theme_extensions.dart';

class CustomHomeFilterContainerWidget extends StatelessWidget {
  final bool isFill;
  final String icon, title;
  const CustomHomeFilterContainerWidget(
      {super.key, this.isFill = true, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: context.dividerTheme.color!,
        ),
        borderRadius: BorderRadius.circular(12),
        color: isFill ? context.colors.primary : context.colors.white,
      ),
      child: Row(
        children: [
          CustomSvgWidget(
            icon: icon,
            height: 20,
            color: !isFill
                ? context.colors.greenIconbackground
                : context.colors.white,
          ),
          kHSizedBox1,
          CustomText(
            text: title,
            color: !isFill
                ? context.colors.greenIconbackground
                : context.colors.white,
            fontWeight: FontWeight.w600,
          )
        ],
      ),
    );
  }
}
