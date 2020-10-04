import 'package:flutter/material.dart';
import 'package:tad_project/Malfunction%20Screen/notification%20Screen/notification_Screen.dart';

import '../color_function.dart';

class CompleteOrderScreen extends StatefulWidget {
  @override
  _CompleteOrderScreenState createState() => _CompleteOrderScreenState();
}

class _CompleteOrderScreenState extends State<CompleteOrderScreen> {
  Widget _attachTextCard() {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * .01,
          horizontal: MediaQuery.of(context).size.width * .03),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .06,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(
              Icons.text_format,
              color: Color(getColorHexFromStr("#95989A")),
            ),
          ),
          SizedBox(width: 5),
          Text(
            "attach a text",
            style: TextStyle(
                color: Color(getColorHexFromStr("#065FF8")),
                fontWeight: FontWeight.bold,
                fontSize: 16),
          )
        ],
      ),
    );
  }

  Widget _expectTimeToFixCard() {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * .01,
          horizontal: MediaQuery.of(context).size.width * .03),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .06,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(
              Icons.timer,
              color: Color(getColorHexFromStr("#95989A")),
            ),
          ),
          SizedBox(width: 5),
          Text(
            "expected time to fix",
            style: TextStyle(
                color: Color(getColorHexFromStr("#065FF8")),
                fontWeight: FontWeight.bold,
                fontSize: 16),
          )
        ],
      ),
    );
  }

  Widget _attachAPic() {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * .01,
          horizontal: MediaQuery.of(context).size.width * .03),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .06,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5),
            child: Icon(
              Icons.photo_camera,
              color: Color(getColorHexFromStr("#95989A")),
            ),
          ),
          SizedBox(width: 5),
          Text(
            "attach a picture of the problem",
            style: TextStyle(
                color: Color(getColorHexFromStr("#065FF8")),
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
          Expanded(child: SizedBox()),
          IconButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Color(getColorHexFromStr("#95989A")),
                size: 20,
              ),
              onPressed: () {
                _changeVisibility(!_visibility);
              })
        ],
      ),
    );
  }

  bool _visibility = false;
  void _changeVisibility(bool visibility) {
    setState(() {
      _visibility = visibility;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(getColorHexFromStr("#F5F5F5")),
      appBar: PreferredSize(
        child: Card(
          margin: const EdgeInsets.all(0),
          elevation: 4,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  onTap: (){
                    Navigator.pop(context, [true]);
                  },
                    child: Icon(
                  Icons.arrow_back,
                  color: Colors.grey,
                  size: 30,
                )),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width * .75,
                  child: Center(
                    child: Text(
                      "Travel Assistant",
                      style: TextStyle(color: Color(0xff284E8F), fontSize: 25),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30))),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NotificationScreen()));
                  },
                  child: Icon(
                    Icons.notifications,
                    color: Colors.grey,
                    size: 30,
                  ),
                )
              ],
            ),
          ),
        ),
        preferredSize: Size.fromHeight(150),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .03,
              vertical: MediaQuery.of(context).size.height * .02,
            ),
            child: Text(
              "COMPLETE YOUR ORDER",
              style: TextStyle(
                  color: Color(getColorHexFromStr("#707070")),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
          _attachAPic(),
          Offstage(
            offstage: _visibility,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .3,
              margin: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * .005,
                  horizontal: MediaQuery.of(context).size.width * .09),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.photo_camera,
                          color: Color(getColorHexFromStr("#95989A")),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "you have attached a picture of ",
                            maxLines: 2,
                            style: TextStyle(
                                color: Color(getColorHexFromStr("#065FF8")),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "the problem ",
                            maxLines: 2,
                            style: TextStyle(
                                color: Color(getColorHexFromStr("#065FF8")),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .15,
                    width: MediaQuery.of(context).size.width * .4,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/camera.png"),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: (){},
                    child: Padding(
                      padding:  EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width*.05

                    ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "remove pic",
                            style: TextStyle(
                                color: Color(getColorHexFromStr("#707070")),
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(getColorHexFromStr("#065FF8"))
                                    .withOpacity(.3),
                              borderRadius: BorderRadius.circular(8)
                            ),
                            //width: MediaQuery.of(context).size.width / 3,
                            height: MediaQuery.of(context).size.height * .04,

                            child: Center(
                              child: Text(
                                "complete your order",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Color(getColorHexFromStr("#065FF8"))),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          _attachTextCard(),
          _expectTimeToFixCard(),
          Expanded(child: SizedBox()),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * .01,
                  horizontal: MediaQuery.of(context).size.width * .04),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .08,
              decoration: BoxDecoration(
                color: Color(getColorHexFromStr("#43A0E7")),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "submit",
                  style: TextStyle(
                      color: Color(getColorHexFromStr("#FFFFFF")),
                      fontSize: 14,
                      letterSpacing: 0.06),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
