import 'package:flutter/material.dart';
import 'package:plotsklapps_website/constants/flexscheme_colors.dart';

import '../widgets/appbar_widget.dart';
import '../widgets/drawer_widget.dart';

class DesktopScreen extends StatefulWidget {
  const DesktopScreen({Key? key}) : super(key: key);

  @override
  State<DesktopScreen> createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget,
      backgroundColor: flexSchemeLight.tertiary,
      body: Row(
        children: [
          drawerWidget,
          Expanded(
            flex: 2,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: flexSchemeLight.secondary),
                  );
                }),
          ),
          Expanded(
            child: Column(
              children: [
                Container(color: flexSchemeLight.tertiary),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
