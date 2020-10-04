import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tad_project/color_function.dart';
import 'package:tad_project/profile_screen/My%20location/LocationScreen.dart';

class MyLocationButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>LocationScreen()));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.03 ),
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.03),
        height: MediaQuery.of(context).size.height*.12,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20.0))
        ),
        child: Row(
          children: <Widget>[
            Icon(Icons.place,color: Color(getColorHexFromStr('#0B8AF8')),size: 40,),
            SizedBox(width: MediaQuery.of(context).size.width*.01,),
            Text('My Location',style: TextStyle(fontSize: 19)),
          ],
        ),
      ),
    );
  }
}