import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tad_project/Malfunction%20Screen/notification%20Screen/notification_Screen.dart';

import '../color_function.dart';

class MalfunctionScreen extends StatefulWidget {
  @override
  _MalfunctionScreenState createState() => _MalfunctionScreenState();
}

class _MalfunctionScreenState extends State<MalfunctionScreen> {
  Widget _malfunctionCard() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2 - 30,
      margin: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * .02,
        horizontal: MediaQuery.of(context).size.width * .05,
      ),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ], color: Colors.white),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .01),
                child: Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: MediaQuery.of(context).size.height * .04,
                  color: Color(getColorHexFromStr("#A132A8")),
                  child: Center(
                    child: Text(
                      "20%",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .04,
            ),
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * .08,
                  width: MediaQuery.of(context).size.width * .13,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    image: DecorationImage(
                        image: AssetImage("assets/images/person.png"),
                        fit: BoxFit.fill),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          "Brand Name",
                          style: TextStyle(
                            color: Color(getColorHexFromStr("#121212")),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.verified_user,
                          color: Color(getColorHexFromStr("#22FF74")),
                          size: 20,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Service Provider ",
                      style: TextStyle(
                        color: Color(getColorHexFromStr("#707070")),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 7,
              vertical: MediaQuery.of(context).size.height * .01,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.dehaze,
                      color: Color(getColorHexFromStr("#444444")),
                      size: 23,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Type of service ",
                      style: TextStyle(
                          color: Color(getColorHexFromStr("#BBBBBB")),
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    )
                  ],
                ),
                Divider(
                  indent: 30,
                  thickness: .6,
                  color: Colors.black54,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.reply,
                      textDirection: TextDirection.rtl,
                      color: Color(getColorHexFromStr("#444444")),
                      size: 23,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "reviews ",
                      style: TextStyle(
                          color: Color(getColorHexFromStr("#BBBBBB")),
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    )
                  ],
                ),
                Divider(
                  indent: 30,
                  thickness: .6,
                  color: Colors.black54,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.list,
                      textDirection: TextDirection.rtl,
                      color: Color(getColorHexFromStr("#444444")),
                      size: 23,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "details ",
                      style: TextStyle(
                          color: Color(getColorHexFromStr("#BBBBBB")),
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    )
                  ],
                ),
                Divider(
                  indent: 30,
                  thickness: .6,
                  color: Colors.black54,
                )
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {},
                child: Text(
                  "Start Negotiation",
                  style: TextStyle(
                      color:
                          Color(getColorHexFromStr("#444444")).withOpacity(.6),
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 8,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width / 4,
                  height: MediaQuery.of(context).size.height * .06,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(getColorHexFromStr("#065FF8"))),
                  child: Center(
                    child: Text(
                      "Applicate",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        letterSpacing: .06,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Card(
          margin: const EdgeInsets.all(0),
          elevation: 4,
          //shape: RoundedRectangleBorder(
             // borderRadius: BorderRadius.only(
                 // bottomRight: Radius.circular(30),
                 // bottomLeft: Radius.circular(30))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(onTap: (){
                  Navigator.pop(context, [true]);
                },
                    child: Icon(Icons.arrow_back,color: Colors.grey,size: 30,)),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width*.75,
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
                InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NotificationScreen()));

                  },
                  child:Icon(Icons.notifications,color: Colors.grey,size: 30,),
                )
              ],
            ),
          ),
        ),
        preferredSize: Size.fromHeight(150),
      ),
      /* AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        title: Text(
          "Travel Assistant",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(getColorHexFromStr("#284E8F")),
            fontSize: 23,
            letterSpacing: .09,
          ),
        ),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 26,
              color: Color(getColorHexFromStr("#284E8F")),
            ),
            onPressed: () {
              Navigator.pop(context, [true]);
            }),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.notifications,
                  color: Color(getColorHexFromStr("#95989A"))),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationScreen()));
              })
        ],
      ),*/
      backgroundColor: Color(getColorHexFromStr("#F5F5F5")),
      body: ListView(
        //crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          /*Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              color: Colors.white,
            ),
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
                      onPressed: () {}),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.start,
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
          ),*/
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .02,
                vertical: MediaQuery.of(context).size.height * .03),
            child: Text(
              "Malfunctions In The Motor",
              maxLines: 2,
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(getColorHexFromStr("#707070"))),
            ),
          ),
          // Expanded(child:
          Container(
            height: MediaQuery.of(context).size.height - 50,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return _malfunctionCard();
                }),
          )
          //)
        ],
      ),
    );
  }
}
