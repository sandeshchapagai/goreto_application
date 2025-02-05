import 'package:flutter/material.dart';
import 'package:goreto_app/core/app/constants/dimensions.dart';
import 'package:goreto_app/core/routes/route_navigator.dart';
import 'package:goreto_app/presentation/screens/main/home/components/home_card/home_card_screen.dart';
import 'package:goreto_app/presentation/screens/main/home/components/widgets/custom_home_card_widget.dart';
import 'package:goreto_app/presentation/screens/main/home/components/widgets/custom_home_filter_widget.dart';
import 'package:goreto_app/presentation/screens/main/home/components/widgets/home_search_widget.dart';

import '../../../../../core/app/constants/images.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kVSizedBox4,
        HomeSearchWidget(),
        Expanded(
          child: ListView(
            children: [
              CustomHomeFilterWidget(),
              kVSizedBox1,
              CustomHomeCardWidget(
                onTap: () => RouteNavigator.navigate(context, HomeCardScreen()),
              ),
              kVSizedBox1,
              CustomHomeCardWidget(
                image: kHimalImage,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
