import 'package:flutter/material.dart';
import 'package:goreto_app/core/app/constants/dimensions.dart';
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
        kVSizedBox1,
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomHomeFilterWidget(),
                kVSizedBox1,
                CustomHomeCardWidget(),
                kVSizedBox1,
                CustomHomeCardWidget(
                  image: kHimalImage,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
