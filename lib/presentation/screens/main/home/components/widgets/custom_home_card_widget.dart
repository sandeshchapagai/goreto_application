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
  const CustomHomeCardWidget({super.key, this.image});

  @override
  State<CustomHomeCardWidget> createState() => _CustomHomeCardWidgetState();
}

class _CustomHomeCardWidgetState extends State<CustomHomeCardWidget> {
  int _currentIndex = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  final List<Widget> _itemsList = List.generate(
    5,
    (index) => Container(
      margin: const EdgeInsets.all(9),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.purple.shade500,
        borderRadius: BorderRadius.circular(31),
      ),
      child: Text(
        'Item $index',
        style: const TextStyle(fontSize: 31, color: Colors.white),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: context.colors.grayShade300,
        ),
        child: Column(children: [
          Column(
            children: [
              CarouselSlider(
                items: _itemsList,
                carouselController: _controller,
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(_itemsList.length, (index) {
                    return Container(
                        width: 12.0,
                        height: 12.0,
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _currentIndex == index
                                ? Colors.black
                                : Colors.grey));
                  })),
              CustomImageAssetWidget(image: widget.image ?? kHimalImage),
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
                          text: "Pokhara, gandaki Province",
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
                              color: context.colors.greenIconbackground),
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
                              color: context.colors.greenIconbackground),
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
        ]));
  }
}
