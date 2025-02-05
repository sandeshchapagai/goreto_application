import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:goreto_app/core/app/constants/dimensions.dart';
import 'package:goreto_app/core/app/constants/font_size.dart';
import 'package:goreto_app/core/app/constants/icons.dart';
import 'package:goreto_app/core/app/constants/images.dart';
import 'package:goreto_app/core/app/constants/styles.dart';
import 'package:goreto_app/presentation/widgets/custom_image_asset_widget.dart';
import 'package:goreto_app/presentation/widgets/custom_svg_widget.dart';
import 'package:goreto_app/utils/theme_extensions.dart';

class CustomHomeCardWidget extends StatefulWidget {
  final String? image;
  final Function()? onTap;
  const CustomHomeCardWidget({super.key, this.image, this.onTap});

  @override
  State<CustomHomeCardWidget> createState() => _CustomHomeCardWidgetState();
}

class _CustomHomeCardWidgetState extends State<CustomHomeCardWidget> {
  int _currentIndex = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  final List<Widget> _itemsList = List.generate(
    5,
    (index) => CustomImageAssetWidget(image: kHimalImage),
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: context.colors.grayShade300,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                // Carousel Slider
                CarouselSlider(
                  items: _itemsList,
                  carouselController: _controller,
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height *
                        0.29, // Adjust height as needed
                    viewportFraction: 1.0, // Full width
                    autoPlay: false,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                ),
                // Row of Indicators Overlaid on Carousel
                Positioned(
                  bottom:
                      10, // Adjust to position the row above the bottom edge of the carousel
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(_itemsList.length, (index) {
                      return AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        height: 10.0,
                        width: _currentIndex == index
                            ? 12.0
                            : 8.0, // Active dot is larger
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentIndex == index
                              ? context.colors.white
                              : context.colors.grayShade300,
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "Mardi Himal",
                        fontSize: FontSize.kS15,
                        fontWeight: FontWeight.w600,
                      ),
                      CustomText(
                        text: "Pokhara, Gandaki Province",
                      ),
                      Row(
                        spacing: kHBox0,
                        children: [
                          Icon(Icons.star),
                          CustomText(
                            text: "4.8",
                            fontSize: FontSize.kS13,
                            fontWeight: FontWeight.w500,
                          ),
                          CustomText(
                            text: "Moderate",
                            fontSize: FontSize.kS13,
                            fontWeight: FontWeight.w500,
                          ),
                          CustomText(
                            text: "4.35 Km",
                            fontSize: FontSize.kS13,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    spacing: kHBox0,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: context.colors.greenIconbackground,
                        ),
                        child: CustomSvgWidget(
                          icon: kSaveIcon,
                          height: 15,
                          color: context.colors.white,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: context.colors.greenIconbackground,
                        ),
                        child: CustomSvgWidget(
                          icon: kDownloadIcon,
                          color: context.colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
