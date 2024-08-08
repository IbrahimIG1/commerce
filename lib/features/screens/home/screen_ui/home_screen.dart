import 'package:flutter/material.dart';
import 'package:g_commerce/core/theming/text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyles textStyle = TextStyles();
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Home Screen',
            style: textStyle.font18BoldBlack,
          ),
        ],
      )),
    );
  }
}
