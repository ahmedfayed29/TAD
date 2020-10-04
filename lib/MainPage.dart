import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:tad_project/ServiceProviderHome.dart';
import 'package:tad_project/travel_assistantScreen.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: Card(
          margin: const EdgeInsets.all(0),
          elevation: 4,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30))),
          child: Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Text(
                "travel assistant",
                style: TextStyle(color: Color(0xff284E8F), fontSize: 25),
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30))),
          ),
        ),
        preferredSize: Size.fromHeight(150),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 130),
        children: [
          Container(
            height: 220,
            padding: EdgeInsets.only(top: 40, left: 15, right: 15, bottom: 15),
            child: Card(
              margin: const EdgeInsets.all(0),
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30))),
              child: Container(
                height: 130,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        StepProgressIndicator(
                          fallbackLength:
                              MediaQuery.of(context).size.width * .7,
                          totalSteps: 150,
                          currentStep: 32,
                          size: 15,
                          padding: 0,
                          selectedColor: Color(0xff284E8F),
                          unselectedColor: Colors.grey.withOpacity(.3),
                          roundedEdges: Radius.circular(10),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: MediaQuery.of(context).size.width * .7,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff284E8F)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Info",
                            style: TextStyle(
                                fontSize: 15, color: Color(0xff284E8F)),
                          ),
                          Spacer(),
                          Text(
                            "1/3 steps",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff352641).withOpacity(.7)),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: MediaQuery.of(context).size.width * .7,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            child: Text(
                              "Later",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xff284E8F).withOpacity(.7)),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xff284E8F).withOpacity(.14)),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            child: Text(
                              "Edit",
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xff284E8F)),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xff284E8F).withOpacity(.14)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30))),
              ),
            ),
            decoration: BoxDecoration(
                color: Color(0xffE4E4E4),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30))),
          ),
          Card(
            margin: const EdgeInsets.all(0),
            elevation: 2,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30))),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "CHOOSE",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 18, color: Color(0xff352641)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: Container(
                          width: MediaQuery.of(context).size.width * .4,
                          height: 150,
                          decoration: BoxDecoration(
                              color: Color(0xff9599B3),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(40),
                                  bottomRight: Radius.circular(10),
                                  topRight: Radius.circular(40),
                                  topLeft: Radius.circular(10))),
                          child: Center(
                            child: Text(
                              "Car owner",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xff352641)),
                            ),
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>TravelAssistantScreen()));
                        },
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ServiceProviderHomeScreen()));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * .4,
                          height: 150,
                          decoration: BoxDecoration(
                              color: Color(0xffA0690C),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(40),
                                  bottomRight: Radius.circular(10),
                                  topRight: Radius.circular(40),
                                  topLeft: Radius.circular(10))),
                          child: Center(
                            child: Text(
                              "Service PROVIDOR",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xff352641)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height:50,
                    child: Center(
                      child: Text(
                        "submit",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 18, color: Color(0xff585858)),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xffF5F5F5),
                        borderRadius: BorderRadius.circular(14)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30))),
            ),
          )
        ],
      ),

    );
  }
}
