import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tad_project/color_function.dart';
import 'package:tad_project/profile_screen/Report%20a%20problem/report%20problem%20screen.dart';

class ReportProblemButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ReportProblemScreen()));
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
            Icon(Icons.report,color: Color(getColorHexFromStr('#4F06E1')),size: 40,),
            SizedBox(width: MediaQuery.of(context).size.width*.01,),
            Text('Report a Problem',style: TextStyle(fontSize: 19)),
            ],
        ),
      ),
    );
  }
}