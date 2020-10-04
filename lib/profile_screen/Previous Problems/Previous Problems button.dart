import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tad_project/color_function.dart';
import 'package:tad_project/profile_screen/Previous%20Problems/provious%20problem%20screen.dart';

class PreviousProblemsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>PreviousProblemScreen()));
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
            Icon(Icons.warning,color: Color(getColorHexFromStr('#FCEA03')),size: 40,),
            SizedBox(width: MediaQuery.of(context).size.width*.01,),
            Text('Previous Problems:',style: TextStyle(fontSize: 19)),
            Expanded(child: SizedBox()),
            Text('4 items',style: TextStyle(color: Color(getColorHexFromStr('#666666')),fontSize: 16),)
          ],
        ),
      ),
    );
  }
}