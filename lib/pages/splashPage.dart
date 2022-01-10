// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lalinapp/pages/onBoardingPage/logic_onboard.dart';
import 'package:lalinapp/pages/onBoardingPage/onboarding.dart';
import 'package:lalinapp/theme.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(milliseconds: 3000), () {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => LogicOnBoard(),
      //   ),
      // );
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => LogicOnBoard(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/splashScreen.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: MediaQuery.of(context).size.width - (2 * 109),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Pengendara Cerdas',
                  style: txMedium.copyWith(
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Taat Berlalulintas',
                  style: txBold.copyWith(
                    fontSize: 28,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
