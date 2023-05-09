import 'package:challenge_app/pages/color.dart';
import 'package:challenge_app/pages/setting_page.dart';
import 'package:challenge_app/pages/star_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class NbPage extends StatefulWidget {
  const NbPage({Key? key}) : super(key: key);

  @override
  _NbPageState createState() => _NbPageState();
}

class _NbPageState extends State<NbPage> {
  List pages = [
    HomePage(),
    StarPage(),
    SettingPage()

  ];
  int _currentIndex=0;
  void onTap(index){
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        selectedItemColor: AppColor.backGroundColor,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
              label:"Home",
              backgroundColor: Colors.white,
              icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label:"Star",
              backgroundColor: Colors.white,
              icon: Icon(Icons.star_rounded)),
          BottomNavigationBarItem(
              label:"Setting",
              backgroundColor: Colors.white,
              icon: Icon(Icons.settings))
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

