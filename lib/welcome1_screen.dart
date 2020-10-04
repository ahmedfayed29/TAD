import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tad_project/color_function.dart';
import 'package:tad_project/sign_in_screen/sign_in_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Stack(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * .7,
                    width: MediaQuery.of(context).size.width,
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                      height: MediaQuery.of(context).size.height * .7,
                      autoPlay: true,
                      autoPlayAnimationDuration: Duration(seconds: 1),
                      aspectRatio: 10.0,
                      enlargeCenterPage: true,
                    ),
                    items: [
                      'assets/images/car2.png',
                      'assets/images/car3.png',
                      'assets/images/car4.png'
                    ].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.0),bottomLeft: Radius.circular(20.0)),
                                  image: DecorationImage(
                                      image: AssetImage(i), fit: BoxFit.fill)),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ]
            ),
            SizedBox(height: MediaQuery.of(context).size.height*.05,),
            Text('Travel Assistant'),
            SizedBox(height: MediaQuery.of(context).size.height*.03,),
            Text('WELCOME',style: TextStyle(letterSpacing: 2.0,fontWeight: FontWeight.bold,fontSize: 24),),
            SizedBox(height: MediaQuery.of(context).size.height*.05,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()));
              },
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Color(getColorHexFromStr('#0292AD'))
                ),
                child: Center(child: Text('Next',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white),),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
