import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tad_project/complete%20your%20order%20Screen/completeOrderScreen.dart';

import '../../color_function.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  Widget _card1() {
    return
      Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height / 4,
        margin: EdgeInsets.symmetric(
            vertical: MediaQuery
                .of(context)
                .size
                .height / 50,
            horizontal: MediaQuery
                .of(context)
                .size
                .width * .03),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
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
          mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(
                        top: 10,
                        right: 10
                    )
                    ,
                    child: Icon(Icons.more_vert,
                      color: Color(getColorHexFromStr("#707070")),)
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery
                    .of(context)
                    .size
                    .width * .04,
              ),
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * .08,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * .13,
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
                        "Service Provider name",
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
            SizedBox(
              height: 10,
            ),
            Text("Your Request Has Been Rejected", style: TextStyle(
                color: Color(getColorHexFromStr("#707070")),
                fontSize: 16,
                fontWeight: FontWeight.bold
            ),
              textAlign: TextAlign.center,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    //width: MediaQuery.of(context).size.width / 4.5,
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * .04,
                    color: Color(getColorHexFromStr("#F99A9A")).withOpacity(.3),
                    child: Center(
                      child: Text(
                        "show details",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Color(getColorHexFromStr("#FE0000"))),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      );
  }
    Widget _card2
    (){
      return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 4,
        margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height / 50,
            horizontal: MediaQuery.of(context).size.width * .03),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
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
          mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(
                        top: 10,
                        right: 10
                    )
                    ,child: Icon(Icons.more_vert,color: Color(getColorHexFromStr("#707070")),)
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
                          image: AssetImage("assets/images/person2.png"),
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
                        "Service Provider name",
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
            SizedBox(
              height: 10,
            ),
            Text("Your Request Has Been Accepted",style: TextStyle(
                color: Color(getColorHexFromStr("#707070")),
                fontSize: 16,
                fontWeight: FontWeight.bold
            ),
              textAlign: TextAlign.center,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(5),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CompleteOrderScreen()));
                    },
                    child: Container(
                      //width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height * .04,
                      color: Color(getColorHexFromStr("#065FF8")).withOpacity(.3),
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
                  ),
                )
              ],
            ),
          ],
        ),
      );


    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(getColorHexFromStr("#F5F5F5")),
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
                  onTap: (){},

                  child:Icon(Icons.notifications,color: Color(getColorHexFromStr("#FE0000")),size: 30,),
                )
              ],
            ),
          ),
        ),
        preferredSize: Size.fromHeight(150),
      ), /*AppBar(
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
                  color: Color(getColorHexFromStr("#FE0000"))),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationScreen()));
              })
        ],
      ),*/
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              left:  MediaQuery.of(context).size.width * .05,
              right:  MediaQuery.of(context).size.width * .05,
              top:  MediaQuery.of(context).size.height * .009,
              bottom:  MediaQuery.of(context).size.height * .003,

      )
            ,
            child: Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 1.3,
                  height: MediaQuery.of(context).size.height * .06,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],

                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Mark All As Read",
                      style: TextStyle(
                          color: Color(getColorHexFromStr("#065FF8")),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 10,
                  height: MediaQuery.of(context).size.height * .06,
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
                  child: Center(
                    child: IconButton(
                        icon: Icon(
                          Icons.volume_off,
                          color: Color(getColorHexFromStr("#95989A")),
                          //size: 30,
                        ),
                        onPressed: () {}),
                  ),
                )
              ],
            ),
          ),
          _card1(),
          _card2(),

        ],
      ),
    );
  }
}
