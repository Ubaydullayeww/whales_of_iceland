import 'package:flutter/material.dart';
import '../../screen/about_screen.dart';
import '../../screen/guides_screen.dart';
import '../../screen/safety_instructions_screen.dart';

sealed class AppRoutes {
  static const guides = "/";
  static const about = "about";
  static const safety = "safety";

  static Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
    guides: (context) => const GuidesScreen(),
    about: (context) => const AboutScreen(),
    safety: (context) => const SafetyInstructionsScreen(),
  };
}