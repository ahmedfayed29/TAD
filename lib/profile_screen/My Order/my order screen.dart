import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tad_project/color_function.dart';

class MyOrderScreen extends StatefulWidget {
  @override
  _MyOrderScreenState createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {
  List<Map> _orderInfo=[
    {
      'shipment no.':'5478475487',
      'orderDate':'4/4/2020',
      'deliverDate':'20/4/2020'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70.withOpacity(0.85),
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
                  'My Order',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )
              ],
            ),
          ),
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * .15)),
      body: ListView.builder(
        itemCount: _orderInfo.length,
          itemBuilder: (context,index){
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20.0))
              ),
              padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*.02,horizontal: MediaQuery.of(context).size.width*.04),
              margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*.02,horizontal: MediaQuery.of(context).size.width*.04),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text('SHIPMENT NO.',style: TextStyle(fontSize: 17)),
                      Expanded(child: SizedBox()),
                      Text(_orderInfo[index]['shipment no.'],style: TextStyle(fontSize: 17),)
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*.015,horizontal: MediaQuery.of(context).size.width*.04),
                    height: 2.0,
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey,width: 2.0))
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text('ORDER DATE',style: TextStyle(fontSize: 17)),
                      Expanded(child: SizedBox()),
                      Text(_orderInfo[index]['orderDate'],style: TextStyle(fontSize: 17),)
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*.015,horizontal: MediaQuery.of(context).size.width*.04),
                    height: 2.0,
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey,width: 2.0))
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text('DELIVER DATE',style: TextStyle(fontSize: 17)),
                      Expanded(child: SizedBox()),
                      Text(_orderInfo[index]['deliverDate'],style: TextStyle(fontSize: 17),)
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*.015,horizontal: MediaQuery.of(context).size.width*.04),
                    height: 2.0,
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey,width: 2.0))
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*.05),
                    height: MediaQuery.of(context).size.height*.3,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/orderImage.jpg'),fit: BoxFit.fill),
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40.0),topRight: Radius.circular(40.0))
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: Text('View All Details',style: TextStyle(color: Color(getColorHexFromStr('#0B8AF8')),fontSize: 20),),
                  )
                ],
              ),

            );
          }
      )
    );
  }
}
