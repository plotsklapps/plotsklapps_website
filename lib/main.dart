import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:google_fonts/google_fonts.dart';

const ColorScheme flexSchemeLight = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xff1f3339),
  onPrimary: Color(0xffffffff),
  primaryContainer: Color(0xff9ec4d4),
  onPrimaryContainer: Color(0xff1b2124),
  secondary: Color(0xffd2600a),
  onSecondary: Color(0xffffffff),
  secondaryContainer: Color(0xffffdbc8),
  onSecondaryContainer: Color(0xff282522),
  tertiary: Color(0xff93a0a9),
  onTertiary: Color(0xff000000),
  tertiaryContainer: Color(0xffb5cddb),
  onTertiaryContainer: Color(0xff1f2325),
  error: Color(0xffba1a1a),
  onError: Color(0xffffffff),
  errorContainer: Color(0xffffdad6),
  onErrorContainer: Color(0xff410002),
  background: Color(0xffedefef),
  onBackground: Color(0xff121212),
  surface: Color(0xfff6f7f7),
  onSurface: Color(0xff090909),
  surfaceVariant: Color(0xffedefef),
  onSurfaceVariant: Color(0xff121212),
  outline: Color(0xff5f5f5f),
  shadow: Color(0xff000000),
  inverseSurface: Color(0xff111212),
  onInverseSurface: Color(0xfff5f5f5),
  inversePrimary: Color(0xffa2b1b5),
  surfaceTint: Color(0xff1f3339),
);

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
      theme: FlexThemeData.light(
        scheme: FlexScheme.outerSpace,
        surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
        blendLevel: 20,
        appBarStyle: FlexAppBarStyle.primary,
        appBarOpacity: 0.95,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 20,
          blendOnColors: false,
          defaultRadius: 24.0,
        ),
        useMaterial3ErrorColors: true,
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        fontFamily: GoogleFonts.questrial().fontFamily,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 24.0),
              Row(
                children: [
                  const SizedBox(width: 24.0),
                  Expanded(
                    child: Text(
                      "Hello World!\nYou've caught me. I've not yet started making a website, so you're going to have to do with a big logo for now...",
                      style: TextStyle(
                        fontSize: 48.0,
                        fontWeight: FontWeight.bold,
                        color: flexSchemeLight.primary,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Image(
                      image: AssetImage(
                        'assets/images/plotsklappsLogoStacked.png',
                      ),
                    ),
                  ),
                  const SizedBox(width: 24.0),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
