import 'package:flutter/material.dart';
import 'package:goreto_app/core/app/constants/dimensions.dart';
import 'package:goreto_app/core/app/constants/font_size.dart';
import 'package:goreto_app/core/app/constants/icons.dart';
import 'package:goreto_app/core/enums/enums.dart';
import 'package:goreto_app/presentation/screens/main/home/components/home_card/components/widgets/card_details_carousel_slider_widget.dart';
import 'package:goreto_app/presentation/screens/main/home/components/home_card/components/widgets/card_profile_widget.dart';
import 'package:goreto_app/presentation/screens/main/home/components/home_card/components/widgets/custom_day_list_widget.dart';
import 'package:goreto_app/presentation/screens/main/home/components/home_card/components/widgets/custom_info_widget.dart';
import 'package:goreto_app/presentation/screens/main/home/components/home_card/components/widgets/custom_label_widget.dart';
import 'package:goreto_app/presentation/screens/main/home/components/home_card/components/widgets/custom_weather_info_widget.dart';
import 'package:goreto_app/presentation/widgets/custom_button_widget.dart';
import 'package:goreto_app/utils/responsive.dart';
import 'package:goreto_app/utils/theme_extensions.dart';

import '../../../../../../../core/app/constants/styles.dart';
import '../../widgets/custom_days_widget.dart';

class HomeCardDetailsBody extends StatefulWidget {
  const HomeCardDetailsBody({super.key});

  @override
  State<HomeCardDetailsBody> createState() => _HomeCardDetailsBodyState();
}

class _HomeCardDetailsBodyState extends State<HomeCardDetailsBody> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        CardDetailsCarouselSliderWidget(),
        Responsive(context: context, child: CardProfileWidget()),
        Divider(
          color: context.colors.darkGreen,
          thickness: 1,
        ),
        Responsive(
          context: context,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomInfoWidget(
                title: "4500 m",
                subTitle: "Max Elevation",
                icon: kElevationIcon,
              ),
              CustomInfoWidget(
                icon: kDurationIcon,
                title: "4-5 days",
                subTitle: "Duration",
              ),
              CustomInfoWidget(
                icon: kCashIcon,
                title: "8-10K",
                subTitle: "Max Elevation",
              ),
            ],
          ),
        ),
        CustomLabelWidget(
          title: "Weather",
        ),
        kVSizedBox1,
        SizedBox(height: 50, child: CustomDaysWidget()),
        kVSizedBox1,
        Responsive(context: context, child: CustomWeatherInfoWidget()),
        Responsive(context: context, child: CustomDayListWidget()),
        CustomLabelWidget(
          hasTrailing: true,
          title: "Itineraries",
          trailingWidget: Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: context.colors.primary,
            ),
            child: Row(
              children: [
                CustomText(
                  text: "Book All",
                  color: context.colors.white,
                  fontWeight: FontWeight.w500,
                ),
                kHSizedBox0,
                CircleAvatar(
                  radius: 12,
                  backgroundColor: context.colors.tertiaryBackground,
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Responsive(
            context: context,
            child: ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return CustomDayListWidget(
                  title: "Day-1",
                  subtitleFontSize: FontSize.kS16,
                  subTitle: "kathmandu to Pokhara",
                  hasTrailing: true,
                );
              },
              itemCount: 6,
              separatorBuilder: (BuildContext context, int index) =>
                  kVSizedBox1,
            ),
          ),
        ),
        CustomLabelWidget(
          title: "Permits",
        ),
        kVSizedBox0,
        Responsive(
          context: context,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "✓ Annapurna Conservation Area Project (ACAP",
                textAlign: TextAlign.start,
                fontSize: FontSize.kS12,
              ),
              CustomText(
                  textAlign: TextAlign.start,
                  fontSize: FontSize.kS12,
                  text: "✓ Trekkers Information Management System (TIMS)"),
            ],
          ),
        ),
        kVSizedBox1,
        Responsive(
            context: context,
            child: CustomButton(buttonType: ButtonType.text).widget(
                context: context,
                title: "Book Package",
                titleColor: context.colors.white,
                fontWeight: FontWeight.w500,
                backgroundColor: context.colors.primary,
                borderRadius: 30,
                runCode: () {})),
        kVSizedBox3,
      ],
    );
  }
}
