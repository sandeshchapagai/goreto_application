import 'package:flutter/material.dart';
import 'package:goreto_app/core/app/constants/dimensions.dart';
import 'package:goreto_app/core/app/constants/font_size.dart';
import 'package:goreto_app/core/app/constants/styles.dart';
import 'package:goreto_app/utils/theme_extensions.dart';

class CustomWeatherInfoWidget extends StatelessWidget {
  const CustomWeatherInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomText(
                      text: "-7°",
                      fontWeight: FontWeight.w600,
                      fontSize: FontSize.kS20,
                    ),
                    kHSizedBox0,
                    Icon(
                      Icons.sunny,
                      color: context.colors.yellow,
                    ),
                  ],
                ),
                CustomText(
                  text: "Clear",
                  fontWeight: FontWeight.w500,
                  fontSize: FontSize.kS14,
                  color: context.colors.caption,
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.water_drop_outlined,
                  size: 12,
                ),
                kHSizedBox0,
                CustomText(
                  text: "0°",
                  fontSize: FontSize.kS12,
                  fontWeight: FontWeight.w500,
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.cloud_outlined,
                  size: 12,
                ),
                kHSizedBox0,
                CustomText(
                  text: "50%",
                  fontSize: FontSize.kS12,
                  fontWeight: FontWeight.w500,
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.air_outlined,
                  size: 12,
                ),
                kHSizedBox0,
                CustomText(
                  text: "3 km/h",
                  fontSize: FontSize.kS12,
                  fontWeight: FontWeight.w500,
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
