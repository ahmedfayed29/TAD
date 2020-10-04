import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tad_project/color_function.dart';

class ContactUsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
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
            Icon(EvaIcons.people,color: Color(getColorHexFromStr('#63C9EF')),size: 40,),
            SizedBox(width: MediaQuery.of(context).size.width*.01,),
            Text('Contact Us',style: TextStyle(fontSize: 19)),
          ],
        ),
      ),
    );
  }
}