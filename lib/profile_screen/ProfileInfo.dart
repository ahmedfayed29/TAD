import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:tad_project/color_function.dart';

class ProfileInfo extends StatelessWidget {
  List<Map> _profileInfo=[
    {
      'infoTitle':'User Name:',
      'infoValue':'Mostafa_Goha11'
    },
    {
      'infoTitle':'Phone Number:',
      'infoValue':'01148611862'
    },
    {
      'infoTitle':'Card:',
      'infoValue': 'active'
    },
    {
      'infoTitle':'All Spend:',
      'infoValue':'you spend 145 LE with us'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30.0),bottomRight: Radius.circular(30.0))
      ),
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * .031,
          horizontal: MediaQuery.of(context).size.width * .05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * .45,
                height: MediaQuery.of(context).size.height * .22,
              ),
              Container(
                width: MediaQuery.of(context).size.width * .4,
                height: MediaQuery.of(context).size.height * .2,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/profilePicture.jpg'),
                        fit: BoxFit.fill)),
              ),
              Positioned(
                    top: MediaQuery.of(context).size.height * .16,
                    left: MediaQuery.of(context).size.width * .35,
                    child: Container(
                      width: MediaQuery.of(context).size.width * .08,
                      height: MediaQuery.of(context).size.height * .07,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.withOpacity(0.7)),
                      child: Center(
                        child: Icon(
                          EvaIcons.cameraOutline,
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                    )),

            ],
          ),
          Container(
            child: Text('Mostafa Goha',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black.withOpacity(0.6),
                    fontWeight: FontWeight.bold)),
          ),
          Container(
            height: MediaQuery.of(context).size.height*.17,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(vertical:MediaQuery.of(context).size.height * .02 ),
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * .005),
                    child: Column(
                      children: <Widget>[Row(
                        children: <Widget>[
                          Text(_profileInfo[index]['infoTitle'],style: TextStyle(fontSize: 19),),
                          Expanded(child: SizedBox()),
                          Text(_profileInfo[index]['infoValue'],style: TextStyle(color: Colors.black.withOpacity(.4),fontSize: 16),),
                        ],
                      )],
                    ),
                  );
                }),
          ),
          InkWell(
            child: Container(
              width: MediaQuery.of(context).size.width*.4,
              height: MediaQuery.of(context).size.height*.06,
              color: Color(getColorHexFromStr('#284E8F')),
              child: Center(child: Text('Edit',style: TextStyle(fontSize: 17,color: Colors.white),),),
            ),
          )
        ],
      ),
    );
  }
}
