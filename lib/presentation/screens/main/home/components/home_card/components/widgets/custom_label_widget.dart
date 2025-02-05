import 'package:flutter/material.dart';
import 'package:goreto_app/utils/theme_extensions.dart';

import '../../../../../../../../core/app/constants/styles.dart';

// ignore: must_be_immutable
class CustomLabelWidget extends StatelessWidget {
  String? title;
  bool hasTrailing;
  Widget? trailingWidget;

  CustomLabelWidget(
      {super.key, this.title, this.hasTrailing = false, this.trailingWidget});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Divider(
          color: context.colors.darkGreen,
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: context.colors.primary,
                ),
                child: CustomText(
                  text: title ?? "",
                  color: context.colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              if (hasTrailing) ...[
                trailingWidget ??
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: context.colors.primary,
                      ),
                      child: CustomText(
                        text: title ?? "",
                        color: context.colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    )
              ]
            ],
          ),
        ),
      ],
    );
  }
}
