import 'package:flutter/material.dart';
import 'package:tad_project/color_function.dart';
import 'dart:async';
import 'package:tad_project/Bottom Navigation Bar.dart';
import 'package:tad_project/welcome1_screen.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*.6,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/Splash.png'),fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(15.0)
                ),
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height*.15,
                  left: MediaQuery.of(context).size.width*.12,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(getColorHexFromStr('#3A37FF3D')),
                    ),
                  )),
              Positioned(
                  top: MediaQuery.of(context).size.height*.15,
                  left: MediaQuery.of(context).size.width*.2,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(getColorHexFromStr('#3A30FF3D')),
                    ),
                  )),
              Positioned(
                  top: MediaQuery.of(context).size.height*.15,
                  left: MediaQuery.of(context).size.width*.28,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(getColorHexFromStr('#3A33FF3D')),
                    ),
                  )),
              Positioned(
                  top: MediaQuery.of(context).size.height*.15,
                  left: MediaQuery.of(context).size.width*.36,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(getColorHexFromStr('#3A33FF3D')),
                    ),
                  )),
              Positioned(
                  top: MediaQuery.of(context).size.height*.15,
                  left: MediaQuery.of(context).size.width*.44,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(getColorHexFromStr('#3A33FF3D')),
                    ),
                  )),
              Positioned(
                  top: MediaQuery.of(context).size.height*.15,
                  left: MediaQuery.of(context).size.width*.52,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(getColorHexFromStr('#3A33FF3D')),
                    ),
                  )),
              Positioned(
                  top: MediaQuery.of(context).size.height*.15,
                  left: MediaQuery.of(context).size.width*.6,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(getColorHexFromStr('#3A33FF3D')),
                    ),
                  )),
              Positioned(
                top: MediaQuery.of(context).size.height*.2,
                  left: MediaQuery.of(context).size.width*.17,
                  child: Text('TRAVEL ASSISTANT',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,color: Colors.white),))
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height*.1,),
          Text('WELCOME',style: TextStyle(letterSpacing: 4.0,fontWeight: FontWeight.bold,fontSize: 24),),
          Expanded(child: SizedBox()),
          Text('ALL COPY RIGHTS',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),)
        ],
      ),
    );
  }
}
