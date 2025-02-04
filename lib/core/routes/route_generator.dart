import 'package:flutter/material.dart';
import 'package:goreto_app/core/routes/route_config.dart';

import '../../presentation/screens/home/home_screen.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    return switch (settings.name) {
      RouteConfig.initialRoute =>
        MaterialPageRoute(builder: (_) => const HomeScreen()),
      _ => null
    };
  }
}
