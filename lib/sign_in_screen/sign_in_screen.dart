import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:tad_project/Bottom%20Navigation%20Bar.dart';
import 'package:tad_project/MainPage.dart';
import 'package:tad_project/sign_up_Screen/sign_up_screen.dart';

import '../color_function.dart';


class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height / 12,
            horizontal: MediaQuery.of(context).size.width / 12),

        child: ListView(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignInScreen()));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 22,
                    width: MediaQuery.of(context).size.width / 4.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(getColorHexFromStr("#284E8F")),
                    ),
                    child: Center(
                      child: Text('SIGN IN',
                          style: GoogleFonts.montserrat(
                              color: Color(getColorHexFromStr('#FFFFFF')),
                              fontSize: 12,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 8,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignUpScreen()));
                  },
                  child: Text("SIGN UP",
                      style: GoogleFonts.montserrat(
                          color: Color(getColorHexFromStr("#998FA2")),
                          fontSize: 12,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 13,
            ),
            TextFormField(

              obscureText: true,
              decoration: InputDecoration(
                hintStyle: GoogleFonts.montserrat(
                  color: Color(getColorHexFromStr("#241332")).withOpacity(.32),
                  fontSize: 16,
                  height: .26,
                ), //TextStyle(
                hintText: "Email",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 25,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintStyle: GoogleFonts.montserrat(
                    color:
                        Color(getColorHexFromStr("#241332")).withOpacity(.32),
                    fontSize: 16), //TextStyle(
                hintText: "Password",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            InkWell(
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
            InkWell(
              onTap: () {

              },
              child: Text("FORGOT PASSWORD",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                      fontSize: 12,
                      color: Color(getColorHexFromStr("#284E8F")),
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}
