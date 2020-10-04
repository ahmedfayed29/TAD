import 'package:flutter/material.dart';
import 'package:tad_project/MainPage.dart';
import 'package:tad_project/profile_screen/App%20Settings/AppSettingScreen.dart';
import 'package:tad_project/profile_screen/Car%20info/car%20Info.dart';
import 'package:tad_project/profile_screen/My%20Order/my%20order%20screen.dart';
import 'package:tad_project/profile_screen/ProfileScreen.dart';
import 'package:tad_project/color_function.dart';


class BottomNavigationBarScreen extends StatefulWidget {
  @override
  _BottomNavigationBarScreenState createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {

  int _currentIndex = 2;

  List _screens = [
    CArInfo(),
    MyOrderScreen(),
    MainPage(),
    ProfileScreen(),
    AppSettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(getColorHexFromStr('#284E8F')),
        //selectedIconTheme: IconThemeData(size: 35),

        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (selecteItem) {
          setState(() {
            _currentIndex = selecteItem;
          });
        },
        items:[
          BottomNavigationBarItem(
              icon: Icon(Icons.directions_car,size: 25,),
            title: Text('')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart,size: 25,),
              title: Text('')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home,size: 25,),
              title: Text('')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person,size: 25,),
              title: Text('')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings,size: 25,),
              title: Text('')
          ),
        ] ,

      ),
    );
  }
}