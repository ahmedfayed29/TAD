import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tad_project/color_function.dart';

import 'my order screen.dart';

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>MyOrderScreen()));
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
            Icon(EvaIcons.shoppingCart,color: Color(getColorHexFromStr('#18A52F')),size: 40,),
            SizedBox(width: MediaQuery.of(context).size.width*.01,),
            Text('My Orders:',style: TextStyle(fontSize: 19)),
            Expanded(child: SizedBox()),
            Text('1 order',style: TextStyle(color: Color(getColorHexFromStr('#666666')),fontSize: 16),)
          ],
        ),
      ),
    );
  }
}
