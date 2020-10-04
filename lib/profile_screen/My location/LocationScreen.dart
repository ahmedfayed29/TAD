import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tad_project/color_function.dart';

class LocationScreen extends StatefulWidget {
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  List<Map> _orderInfo = [
    {
      'shipment no.': '5478475487',
      'orderDate': '4/4/2020',
      'deliverDate': '20/4/2020'
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
                    'Location',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ],
              ),
            ),
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * .15)),
        body: Container(
          //padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * .02,horizontal: MediaQuery.of(context).size.width*.02),
          margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.height * .05,
              top: MediaQuery.of(context).size.width * .04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Let us define your location',
                style: TextStyle(fontSize: 20),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .01),
                width: MediaQuery.of(context).size.width * .75,
                height: MediaQuery.of(context).size.height * .2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    image: DecorationImage(
                        image: AssetImage('assets/images/map.jpg'),
                        fit: BoxFit.fill)),
              ),
              Row(
                children: <Widget>[
                  InkWell(
                    onTap: null,
                    child: Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * .02),
                      width: MediaQuery.of(context).size.width * .4,
                      height: MediaQuery.of(context).size.height * .06,
                      decoration: BoxDecoration(
                          //color: Color(getColorHexFromStr('#0B8AF8')),
                          ),
                      child: Center(
                        child: Text(
                          'deny',
                          style: TextStyle(
                              color: Color(getColorHexFromStr('#707070')),
                              fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: null,
                    child: Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * .02),
                      width: MediaQuery.of(context).size.width * .4,
                      height: MediaQuery.of(context).size.height * .06,
                      decoration: BoxDecoration(
                        color: Color(getColorHexFromStr('#0B8AF8')),
                      ),
                      child: Center(
                        child: Text(
                          'Allow',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
