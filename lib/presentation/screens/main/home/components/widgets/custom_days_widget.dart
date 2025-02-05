import 'package:flutter/material.dart';
import 'package:goreto_app/core/app/constants/dimensions.dart';
import 'package:goreto_app/core/app/constants/styles.dart';
import 'package:goreto_app/utils/theme_extensions.dart';

class CustomDaysWidget extends StatelessWidget {
  const CustomDaysWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> days = [
      {'day': 'Su', 'date': '22'},
      {'day': 'Mo', 'date': '23'},
      {'day': 'Tu', 'date': '24'},
      {'day': 'We', 'date': '25'},
      {'day': 'Th', 'date': '26'},
      {'day': 'Fr', 'date': '27'},
      {'day': 'Sa', 'date': '28'},
      {'day': 'Su', 'date': '29'},
      {'day': 'Mo', 'date': '01'},
      {'day': 'Tu', 'date': '02'},
      {'day': 'We', 'date': '03'},
      {'day': 'Th', 'date': '04'},
      {'day': 'Fr', 'date': '05'},
      {'day': 'Sa', 'date': '06'},
    ];

    return Flexible(
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 12),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              CustomText(
                text: days[index]['day']!,
                fontWeight: FontWeight.w500,
              ), // Day abbreviation
              CircleAvatar(
                backgroundColor: index == 2
                    ? context.colors.grayShade300
                    : context.colors.white,
                radius: 12,
                child: CustomText(
                  text: days[index]['date']!,
                  color: context.colors.caption,
                  fontWeight: FontWeight.w500,
                ),
              ), // Date
            ],
          );
        },
        itemCount: days.length,
        separatorBuilder: (BuildContext context, int index) => kHSizedBox4,
      ),
    );
  }
}
