import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tad_project/Malfunction%20Screen/malfunction_Screen.dart';
import 'package:tad_project/color_function.dart';

class TravelAssistantScreen extends StatefulWidget {
  @override
  _TravelAssistantScreenState createState() => _TravelAssistantScreenState();
}

class _TravelAssistantScreenState extends State<TravelAssistantScreen> {
  List texts = [
    "Malfunctions In The Motor",
    "Tire Repair",
    "Car Paint",
    "Gas Station",
    "Spare Parts Of Cars",
    "Car Accessories"
  ];
  Widget _card(index) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => MalfunctionScreen()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * .01,
            horizontal: MediaQuery.of(context).size.width *
                .02), //width: MediaQuery.of(context).size.width / 2.8,
        // height: MediaQuery.of(context).size.height/15,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),

                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            color: Color(getColorHexFromStr("#F5F5F5")).withOpacity(.8),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(10))),
        child: Center(
          child: Text(
            texts[index],
            maxLines: 2,
            //softWrap: true,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(getColorHexFromStr("#284E8F")),
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 4,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            )),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height / 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    size: 26,
                    color: Color(getColorHexFromStr("#284E8F")),
                  ),
                  onPressed: () {
                    Navigator.pop(context, [true]);

                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Travel Assistant",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(getColorHexFromStr("#284E8F")),
                      fontSize: 23,
                      letterSpacing: .09,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      Expanded(
        child: GridView.builder(
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.5,
              //crossAxisSpacing: 5,
              //mainAxisSpacing: 5,
            ),
            itemBuilder: (context, index) {
              return _card(index);
            }),
      ),
    ]));
  }
}
