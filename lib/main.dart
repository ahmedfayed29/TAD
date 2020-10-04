import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tad_project/Bottom%20Navigation%20Bar.dart';
import 'package:tad_project/MainPage.dart';
import 'package:tad_project/Malfunction%20Screen/malfunction_Screen.dart';
import 'package:tad_project/ServiceProviderHome.dart';
import 'package:tad_project/Splash.dart';
import 'package:tad_project/complete%20your%20order%20Screen/completeOrderScreen.dart';
import 'package:tad_project/profile_screen/App%20Settings/AppSettingScreen.dart';
import 'package:tad_project/profile_screen/Car%20info/car%20Info.dart';
import 'package:tad_project/profile_screen/ProfileScreen.dart';
import 'travel_assistantScreen.dart';
import 'welcome1_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TAD',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      //home: CompleteOrderScreen(),
      theme: ThemeData(
        textTheme:  GoogleFonts.montserratTextTheme(
            Theme.of(context).textTheme
        ),
      ),
    );
  }
}
