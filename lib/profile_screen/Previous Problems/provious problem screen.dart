import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tad_project/color_function.dart';

class PreviousProblemScreen extends StatefulWidget {
  @override
  _PreviousProblemScreenState createState() => _PreviousProblemScreenState();
}

class _PreviousProblemScreenState extends State<PreviousProblemScreen> {
  List<Map<String, dynamic>> _userInfo = [
    {
      'UserName': 'Mostafa Goha',
      'UserImage':
          'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'ProblemText': 'ghjjgghnmnfgjhgkjjgjnhg tjjyfghjyuh'
    },
    {
      'UserName': 'Mostafa Mokhtar',
      'UserImage':
          'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'ProblemText':
          'ghjjgghnmnfgjhgkjjgjnhg tjjyfghjyuh ghfnjhmfj hjngmjhgtyureyhtr dfhndhhdt'
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
                    'Previous Problem',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ],
              ),
            ),
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * .15)),
        body: ListView.builder(
          itemCount: _userInfo.length,
          itemBuilder: (context, index) {
            return Container(
              height: MediaQuery.of(context).size.height * .14,
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * .01,
                  horizontal: MediaQuery.of(context).size.width * .01),
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .02,
                  left: MediaQuery.of(context).size.width * .02,
                right: MediaQuery.of(context).size.width * .02

              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * .12,
                        height: MediaQuery.of(context).size.height * .06,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image:
                                    NetworkImage(_userInfo[index]['UserImage']),
                                fit: BoxFit.fill)),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .02,
                      ),
                      Text(
                        _userInfo[index]['UserName'],
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(getColorHexFromStr('#434343'))),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * .14,),
                    child: Text(
                      _userInfo[index]['ProblemText'],
                      style: TextStyle(
                          fontSize: 10,
                          color: Color(getColorHexFromStr('#434343'))),
                    ),
                  )
                ],
              ),
            );
          },
        ));
  }
}
