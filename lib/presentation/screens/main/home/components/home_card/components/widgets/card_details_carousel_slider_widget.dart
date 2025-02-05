import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:goreto_app/utils/theme_extensions.dart';

import '../../../../../../../../core/app/constants/icons.dart';
import '../../../../../../../../core/app/constants/images.dart';
import '../../../../../../../../core/routes/route_navigator.dart';
import '../../../../../../../../utils/responsive.dart';
import '../../../../../../../widgets/custom_image_asset_widget.dart';
import '../../../../../../../widgets/custom_svg_widget.dart';

class CardDetailsCarouselSliderWidget extends StatefulWidget {
  const CardDetailsCarouselSliderWidget({super.key});

  @override
  State<CardDetailsCarouselSliderWidget> createState() =>
      _CardDetailsCarouselSliderWidgetState();
}

class _CardDetailsCarouselSliderWidgetState
    extends State<CardDetailsCarouselSliderWidget> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    final CarouselSliderController controller = CarouselSliderController();

    final List<Widget> itemsList = List.generate(
      5,
      (index) => CustomImageAssetWidget(
        image: kHimalImage,
      ),
    );
    return Stack(
      children: [
        CarouselSlider(
          items: itemsList,
          carouselController: controller,
          options: CarouselOptions(
            viewportFraction: 1.3, // Full width
            autoPlay: false,
            aspectRatio: 2.5 / 2,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
        Positioned(
            top:
                40, // Adjust to position the row above the bottom edge of the carousel
            left: 0,
            right: 0,
            child: Responsive(
              context: context,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => RouteNavigator.back(context),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: context.colors.greenIconbackground,
                      ),
                      child: CustomSvgWidget(
                        icon: kBackIcon,
                        color: context.colors.white,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: context.colors.greenIconbackground,
                    ),
                    child: CustomSvgWidget(
                      icon: kShareIcon,
                      color: context.colors.white,
                    ),
                  ),
                ],
              ),
            )),
        Positioned(
          bottom:
              10, // Adjust to position the row above the bottom edge of the carousel
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(itemsList.length, (index) {
              return AnimatedContainer(
                duration: Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                height: 10.0,
                width:
                    currentIndex == index ? 12.0 : 8.0, // Active dot is larger
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentIndex == index
                      ? context.colors.white
                      : context.colors.grayShade300,
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
