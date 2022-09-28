import 'package:flutter/material.dart';
import 'package:plotsklapps_website/constants/flexscheme_colors.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/drawer_widget.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget,
      drawer: drawerWidget,
      backgroundColor: flexSchemeLight.tertiary,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(color: flexSchemeLight.secondary),
                    );
                  }),
            ),
          ),
          const Expanded(
            child: Text('Welcome to my Homepage'),
          ),
        ],
      ),
    );
  }
}
