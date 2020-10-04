import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tad_project/color_function.dart';

class AppSettingScreen extends StatefulWidget {
  @override
  _AppSettingScreenState createState() => _AppSettingScreenState();
}

class _AppSettingScreenState extends State<AppSettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          child: Container(
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
                InkWell(
                  onTap: () {
                    Navigator.pop(context, [true]);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 25,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .02,
                ),
                Text(
                  'App Setting',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )
              ],
            ),
          ),
          preferredSize:
          Size.fromHeight(MediaQuery.of(context).size.height * .15)),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            InkWell(child: Row(
              children: <Widget>[
                Icon(Icons.language,color: Color(getColorHexFromStr('#284E8F')),size: 30,),
                SizedBox(width: 10,),
                Text('Country and Languages',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300),),
              ],
            )),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              height: 3,
              width: MediaQuery.of(context).size.width*.9,
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey,width: 3))
              ),
            ),
            InkWell(child: Row(
              children: <Widget>[
                Icon(Icons.feedback,color: Color(getColorHexFromStr('#284E8F')),size: 30,),
                SizedBox(width: 10,),
                Text('Leave Feed Back',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300),),
              ],
            )),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              height: 3,
              width: MediaQuery.of(context).size.width*.9,
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey,width: 3))
              ),
            ),
            InkWell(child: Row(
              children: <Widget>[
                Icon(Icons.rate_review,color: Color(getColorHexFromStr('#284E8F')),size: 30,),
                SizedBox(width: 10,),
                Text('Rate Us On Play Store',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300),),
              ],
            )),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              height: 3,
              width: MediaQuery.of(context).size.width*.9,
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey,width: 3))
              ),
            ),
            Expanded(child: SizedBox()),
            InkWell(child: Row(
              children: <Widget>[
                Icon(Icons.exit_to_app,color: Color(getColorHexFromStr('#284E8F')),size: 30,),
                SizedBox(width: 10,),
                Text('Log Out',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300),),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
