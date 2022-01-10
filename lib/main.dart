// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:lalinapp/pages/onBoardingPage/logic_onboard.dart';
import 'package:lalinapp/pages/splashPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() => runApp(CertasApp());

class CertasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/onboarding': (context) => LogicOnBoard(),
      },
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
    );
  }
}
