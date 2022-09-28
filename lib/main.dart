import 'package:flutter/material.dart';
import 'package:plotsklapps_website/constants/flexscheme_theme.dart';
import 'package:plotsklapps_website/layout/responsive_layout.dart';
import 'package:plotsklapps_website/screens/desktopScreen.dart';
import 'package:plotsklapps_website/screens/mobileScreen.dart';
import 'package:plotsklapps_website/screens/tabletScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeLight,
      home: const SafeArea(
        child: ResponsiveLayout(
          mobileScaffold: MobileScreen(),
          tabletScaffold: TabletScreen(),
          desktopScaffold: DesktopScreen(),
        ),
      ),
    );
  }
}
