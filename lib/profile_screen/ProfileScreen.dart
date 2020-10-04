import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tad_project/color_function.dart';
import 'package:tad_project/profile_screen/App%20Settings/app%20setting%20button.dart';
import 'package:tad_project/profile_screen/Car%20info/car%20info%20button.dart';
import 'package:tad_project/profile_screen/Contact%20Us/contact%20us%20buton.dart';
import 'package:tad_project/profile_screen/My%20Order/order%20button.dart';
import 'package:tad_project/profile_screen/My%20location/my%20location%20button.dart';
import 'package:tad_project/profile_screen/Previous%20Problems/Previous%20Problems%20button.dart';
import 'package:tad_project/profile_screen/ProfileInfo.dart';
import 'package:tad_project/profile_screen/Report%20a%20problem/report%20problem%20button.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70.withOpacity(0.85),
      appBar: PreferredSize(
          child: Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .15,
                decoration: BoxDecoration(
                  color: Colors.white
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * .06,
                    bottom: MediaQuery.of(context).size.height * .03),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .15,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(30.0)),
                    color: Color(getColorHexFromStr('#284E8F'))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'PROFILE',
                      style:
                          GoogleFonts.montserrat(color: Colors.white, fontSize: 18),
                    )
                  ],
                ),
              ),
            ],
          ),
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * .15)),
      body: ListView(
        children: <Widget>[
          ProfileInfo(),
          OrderButton(),
          PreviousProblemsButton(),
          CarInfoButton(),
          ReportProblemButton(),
          MyLocationButton(),
          AppSettingButton(),
          ContactUsButton()
        ],
      ),
    );
  }
}
