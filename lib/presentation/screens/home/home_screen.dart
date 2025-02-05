import 'package:flutter/material.dart';
import 'package:goreto_app/core/app/constants/dimensions.dart';
import 'package:goreto_app/core/app/constants/icons.dart';
import 'package:goreto_app/presentation/screens/main/home/home_screen.dart';
import 'package:goreto_app/presentation/widgets/custom_svg_widget.dart';
import 'package:goreto_app/utils/responsive.dart';
import 'package:goreto_app/utils/theme_extensions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _onItemTapped(int index) {
    setState(() {
// Change the current index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        backgroundColor: context.colors.secondaryBackground,
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: context.colors.primary,
            shape: const CircleBorder(),
            child: CustomSvgWidget(
              icon: kMapIcon,
              color: context.colors.white,
            )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 60,
          color: context.colors.white,
          shape: const CircularNotchedRectangle(),
          notchMargin: 5,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  size: 40,
                  Icons.home,
                  color: context.colors.primary,
                ),
                onPressed: () => _onItemTapped(0),
              ),
              CustomSvgWidget(icon: kSearchIcon),
              kHSizedBox1,
              CustomSvgWidget(icon: kShopIcon),
              CustomSvgWidget(icon: kProfileIcon),
            ],
          ),
        ),
        body: Responsive(context: context, child: HomeScreen1()));
  }
}
