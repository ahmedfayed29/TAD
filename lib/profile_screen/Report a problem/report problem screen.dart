import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tad_project/color_function.dart';

class ReportProblemScreen extends StatefulWidget {
  @override
  _ReportProblemScreenState createState() => _ReportProblemScreenState();
}

class _ReportProblemScreenState extends State<ReportProblemScreen> {
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
                  BorderRadius.only(bottomLeft: Radius.circular(30.0),),
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
                    'Report a Problem',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ],
              ),
            ),
            preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * .15)),
        body: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0)
              ),
              margin: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.05,vertical:MediaQuery.of(context).size.height * .02 ),
              width: MediaQuery.of(context).size.width*.9,
              child: TextFormField(
                maxLines: 5,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey,width: 3),
                  ),
                  hintText: 'Write Your Problem ...'
                ),
              ),
            ),
            InkWell(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.05,vertical:MediaQuery.of(context).size.height * .02 ),
                width: MediaQuery.of(context).size.width*.8,
                height: MediaQuery.of(context).size.height*.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(getColorHexFromStr('#284E8F'))
                ),child: Center(
                child: Text('Send',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 2.0),),
              ),
              ),
            )
          ],
        ),
    );
  }
}