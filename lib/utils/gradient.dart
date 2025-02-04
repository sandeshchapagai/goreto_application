import 'package:flutter/material.dart';

Gradient gradientSubscription() => const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      stops: [0.0, 1.0],
      colors: [
        Color(0xff3E3B92),
        Color(0xffDA0819),
      ],
    );
