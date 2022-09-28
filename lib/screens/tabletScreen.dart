import 'package:flutter/material.dart';
import 'package:plotsklapps_website/constants/flexscheme_colors.dart';

import '../widgets/appbar_widget.dart';
import '../widgets/drawer_widget.dart';

class TabletScreen extends StatefulWidget {
  const TabletScreen({Key? key}) : super(key: key);

  @override
  State<TabletScreen> createState() => _TabletScreenState();
}

class _TabletScreenState extends State<TabletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget,
      drawer: drawerWidget,
      backgroundColor: flexSchemeLight.tertiary,
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4),
          itemCount: 4,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: flexSchemeLight.secondary),
            );
          }),
    );
  }
}
