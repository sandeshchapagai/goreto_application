import 'package:flutter/material.dart';
import 'package:goreto_app/core/app/constants/dimensions.dart';
import 'package:goreto_app/core/app/constants/font_size.dart';
import 'package:goreto_app/core/app/constants/images.dart';
import 'package:goreto_app/core/app/constants/styles.dart';
import 'package:goreto_app/presentation/widgets/custom_image_asset_widget.dart';
import 'package:goreto_app/utils/theme_extensions.dart';

class CustomDayListWidget extends StatefulWidget {
  final bool hasTrailing;
  final String? title;
  final String? subTitle;
  final double? subtitleFontSize;
  final Function()? trailingOnTap;
  final Widget? trailingWidget;
  const CustomDayListWidget(
      {super.key,
      this.trailingOnTap,
      this.subtitleFontSize,
      this.title,
      this.subTitle,
      this.hasTrailing = false,
      this.trailingWidget});

  @override
  State<CustomDayListWidget> createState() => _CustomDayListWidgetState();
}

class _CustomDayListWidgetState extends State<CustomDayListWidget> {
  bool isDetails = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: context.colors.primary),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: widget.title ?? "Best Sessions:",
                      fontWeight: FontWeight.w600,
                      fontSize: FontSize.kS14,
                    ),
                    CustomText(
                      textAlign: TextAlign.start,
                      text: widget.subTitle ??
                          "Autumn (mid-September to early October)Spring (mid-February to early March)",
                      fontSize: widget.subtitleFontSize ?? FontSize.kS12,
                    ),
                  ],
                ),
              ),
              if (widget.hasTrailing) ...[
                widget.trailingWidget ??
                    Expanded(
                      child: InkWell(
                          onTap: () => setState(() {
                                isDetails = !isDetails;
                              }),
                          child: Icon(isDetails
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down)),
                    )
              ]
            ],
          ),
          if (isDetails) ...[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "Distance- 200 km (Drive)",
                    fontSize: FontSize.kS12,
                  ),
                  CustomText(
                    text: "Food- (not included",
                    fontSize: FontSize.kS12,
                  ),
                  CustomText(
                    text: "Duration-8-9-Hours | Flight: 30 mins",
                    fontSize: FontSize.kS12,
                  ),
                ],
              ),
            ),
            Divider(),
            CustomText(
              text: "Hotel",
              fontWeight: FontWeight.w500,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 6),
              decoration: BoxDecoration(
                  color: context.colors.white,
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImageAssetWidget(height: 60, image: kHimalImage),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "Dream International Hotel",
                        fontWeight: FontWeight.w600,
                        fontSize: FontSize.kS14,
                      ),
                      kVSizedBox0,
                      CustomText(text: "Kalika path,MilanChowk"),
                      kVSizedBox0,
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: context.colors.yellow,
                          ),
                          CustomText(text: "4.8")
                        ],
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.close,
                        size: 20,
                      ),
                      kVSizedBox3,
                      Icon(
                        Icons.airplane_ticket,
                        size: 20,
                      ),
                    ],
                  )
                ],
              ),
            )
          ]
        ],
      ),
    );
  }
}
