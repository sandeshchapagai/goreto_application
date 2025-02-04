import 'package:flutter/material.dart';
import 'package:goreto_app/core/app/constants/dimensions.dart';
import 'package:goreto_app/core/app/constants/icons.dart';
import 'package:goreto_app/presentation/screens/main/home/components/widgets/custom_home_filter_container_widget.dart';

class CustomHomeFilterWidget extends StatelessWidget {
  const CustomHomeFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: kHBox1,
        children: [
          CustomHomeFilterContainerWidget(
            icon: kNearByIcon,
            title: "NearBy",
          ),
          CustomHomeFilterContainerWidget(
            title: "Hidden Gems",
            icon: kGemsIcon,
            isFill: false,
          ),
          CustomHomeFilterContainerWidget(
            isFill: false,
            icon: kWaterFallIcon,
            title: "Water fall",
          ),
        ],
      ),
    );
  }
}
