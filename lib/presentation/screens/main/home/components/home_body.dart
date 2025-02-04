import 'package:flutter/material.dart';
import 'package:goreto_app/core/app/constants/dimensions.dart';
import 'package:goreto_app/core/app/constants/images.dart';
import 'package:goreto_app/presentation/screens/main/home/components/widgets/custom_home_card_widget.dart';
import 'package:goreto_app/presentation/screens/main/home/components/widgets/custom_home_filter_widget.dart';
import 'package:goreto_app/presentation/screens/main/home/components/widgets/home_search_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kVSizedBox5,
        HomeSearchWidget(),
        Expanded(
          child: ListView(
            shrinkWrap: true,
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
      ],
    );
  }
}
