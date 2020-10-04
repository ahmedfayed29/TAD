import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tad_project/Bottom%20Navigation%20Bar.dart';
import 'package:tad_project/MainPage.dart';
import 'package:tad_project/color_function.dart';
import 'package:tad_project/sign_in_screen/sign_in_screen.dart';



class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Color(getColorHexFromStr("#F1F0F2")),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 3 + 50,
          decoration: BoxDecoration(
              color: Color(getColorHexFromStr("#284E8F")),
              borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(100))),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 10,
          right: MediaQuery.of(context).size.width / 3.2,
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignInScreen()));
                },
                child: Text('SIGN IN',
                    style: GoogleFonts.montserrat(
                        color: Colors.white60,
                        fontSize: 12,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 8,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()));
                },
                child: Text("SIGN UP",
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        //color: Color(getColorHexFromStr("#FFFFF")),
                        fontSize: 12,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
        Positioned(
            top: MediaQuery.of(context).size.height / 6,
            left: MediaQuery.of(context).size.width / 13,
            right: MediaQuery.of(context).size.width / 13,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(40)),
              height: MediaQuery.of(context).size.height / 2.3,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height / 12,
                    horizontal: MediaQuery.of(context).size.width / 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintStyle: GoogleFonts.montserrat(
                          color: Color(getColorHexFromStr("#241332"))
                              .withOpacity(.32),
                          fontSize: 16,
                          height: .26,
                        ), //TextStyle(
                        hintText: "Name",
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintStyle: GoogleFonts.montserrat(
                          color: Color(getColorHexFromStr("#241332"))
                              .withOpacity(.32),
                          fontSize: 16,
                          height: .26,
                        ), //TextStyle(
                        hintText: "Email",
                      ),
                    ),
                    TextFormField(
                      
                      obscureText: true,
                      decoration: InputDecoration(

                       // focusColor: Color(getColorHexFromStr("#DDDDDD")),
                        hintStyle: GoogleFonts.montserrat(
                            color: Color(getColorHexFromStr("#241332"))
                                .withOpacity(.32),
                            fontSize: 16), //TextStyle(
                        hintText: "Password",
                      ),
                    ),
                  ],
                ),
              ),
            )),
        Positioned(
          top: MediaQuery.of(context).size.height / 1.6,
          left: MediaQuery.of(context).size.width / 13,
          right: MediaQuery.of(context).size.width / 13,
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigationBarScreen()));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Color(getColorHexFromStr("#284E8F")),
                  borderRadius: BorderRadius.circular(50)),
              margin: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height / 25),
              height: MediaQuery.of(context).size.height / 12,
              child: Center(
                child: Text("CONTINUE",
                    style: GoogleFonts.montserrat(
                        color: Colors.white, fontSize: 14)),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
