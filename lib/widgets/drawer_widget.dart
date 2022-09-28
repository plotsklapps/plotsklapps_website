import 'package:flutter/material.dart';
import '../constants/flexscheme_colors.dart';

Widget drawerWidget = Drawer(
  backgroundColor: flexSchemeLight.secondary,
  child: Column(
    children: [
      DrawerHeader(
        child: Image.asset('assets/images/plotsklappsLogoStacked.png'),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 4.0, right: 4.0),
        child: Divider(
          thickness: 4.0,
          color: flexSchemeLight.primary,
        ),
      ),
      const ListTile(
        leading: Icon(Icons.flutter_dash),
        title: Text('T W I T T E R'),
        subtitle: Text('Follow me on Twitter'),
      ),
      const ListTile(
        leading: Icon(Icons.flutter_dash),
        title: Text('G I T H U B'),
        subtitle: Text('Clone my repo\'s'),
      ),
      const ListTile(
        leading: Icon(Icons.flutter_dash),
        title: Text('H A S H N O D E'),
        subtitle: Text('Read my blogs'),
      ),
    ],
  ),
);
