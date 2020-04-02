import 'package:flutter/material.dart';
import 'package:flutter_responsive/src/config/size_config.dart';
import 'package:flutter_responsive/src/res/styles.dart';
import 'package:flutter_responsive/src/screen/welcome_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {

            SizeConfig().init(constraints, orientation);

            return MaterialApp(
              theme: Styles.lightTheme,
              home: WelcomeScreen(),
            );
          },
        );
      },
    );
  }
}