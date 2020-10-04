import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
class CArInfo extends StatefulWidget {
  @override
  _CArInfoState createState() => _CArInfoState();
}

class _CArInfoState extends State<CArInfo> {
  @override
  Widget build(BuildContext context) {

    Widget _carBrandAndModel({String name,String img,Function onTap}){
      return Container(
        child: Card(
          margin: const EdgeInsets.all(0),
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(width: 25,height: 25,decoration: BoxDecoration(image: DecorationImage(
                  image: AssetImage(img??""),
                )),),
                SizedBox(width: 10,),
                Text(
                  "$name",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15
                  ),
                ),
                Spacer(),
                Icon(Icons.keyboard_arrow_down)
              ],
            ),
          ),
        ),
      );
    }
    Widget _carHealth({String name,String img,Function onTap,String detail,String percent}){
      return Container(
        child: Card(
          margin: const EdgeInsets.all(0),
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(width: 25,height: 25,decoration: BoxDecoration(image: DecorationImage(
                      image: AssetImage(img??""),
                    )),),
                    SizedBox(width: 10,),
                    Text(
                      "$name",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15
                      ),
                    ),
                    Spacer(),
                    Text(
                      "$percent",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: Center(
                      child: Text("$detail",style: TextStyle(fontSize: 15,color: Colors.blue),),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(.1),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15)
                      )
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff284E8F),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15)
          )
        ),
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Text("Car Information"),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 10,left: 15,right: 15),
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*.3,
            decoration: BoxDecoration(
              color: Color(0xff707070).withOpacity(.16),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
              child: CircularStepProgressIndicator(
                totalSteps: 100,
                currentStep: 74,
                stepSize: 10,
                selectedColor: Color(0xff3169CA),
                unselectedColor: Colors.grey[200],
                padding: 0,
                child: Center(child: Text("70% Complete")),
                width: 150,
                height: 150,
                selectedStepSize: 15,
                roundedCap: (_, __) => true,
              ),
            ),
          ),
          SizedBox(height: 10,),
          _carBrandAndModel(name: "car Brand",),
          SizedBox(height: 10,),
          _carBrandAndModel(name: "car Model",),
          SizedBox(height: 10,),
          _carHealth(name: "car Model",detail: "Modify",percent: "30%"),
          SizedBox(height: 10,),
          _carHealth(name: "parts have been repaired recently",detail: "see in detail",percent: ""),
        ],
      ),
    );
  }
}
