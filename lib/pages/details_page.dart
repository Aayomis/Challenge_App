import 'package:challenge_app/pages/List_view.dart';
import 'package:challenge_app/pages/setting_page.dart';
import 'package:challenge_app/pages/special_button.dart';
import 'package:challenge_app/pages/star_page.dart';
import 'package:flutter/material.dart';

import 'buttom_nav_bar.dart';
import 'color.dart';
import 'home_page.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final List<Map<String, dynamic>> _allUser = [
    {'first':'Logo Design: From Concept to', 'second':'Presentation','third':20,'fourth':'videos','img':'01.png'},
    {'first':'','second':'Brand Design and Packaging' ,'third':14,'fourth':'videos','img':'02.png'},
    {'first':'Logo Design: From Concept to', 'second':'Presentation','third':20,'fourth':'videos','img':'03.png'}
  ];
  var img ={
    '01.png',
    '02.png',
    '03.png'

  };

  var text ={
    'All Courses',
    'Identity',
  'UI/UX',
  'Branding',

};
  int _currentIndex = 0;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 70, left: 20),
                child: Row(
                  children: [
                    Icon(Icons.apps_rounded, size: 30, color: AppColor.backGroundColor,),
                    Expanded(child: Container()),
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: const CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 17,
                        backgroundImage: AssetImage('images/pics2.png'),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height:40 ,),
              Container(
                padding: const EdgeInsets.only(left: 20,top: 20,right: 10,bottom: 20),
                margin: const EdgeInsets.only(left:25,right: 25),
                height: 60,
                width: MediaQuery.of(context).size.width-50,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: const Offset(0, 1)
                      )
                    ]
                ),
                child: Row(
                  children: [
                    Icon(Icons.search,color: AppColor.backGroundColor,),
                    const SizedBox(width: 10,),
                    Text('Search',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey.withOpacity(0.5),
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                height: 65,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  color: Colors.transparent
                ),
                child: ListView.builder(
                  itemCount: text.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: AppButtons(text: text.elementAt(index),
                      color: selectedIndex==index?Colors.white:AppColor.backGroundColor.withOpacity(0.5),
                      backgroundColor: selectedIndex==index?AppColor.backGroundColor:Colors.grey.withOpacity(0.2),
                      shadowColor: selectedIndex==index?AppColor.backGroundColor:Colors.transparent,
                      sizeh: 40,
                    ),
                  );
                }),
              ),
              Expanded(
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView.builder(
                    itemCount: _allUser.length,
                      itemBuilder: (_, index){
                    return Container(
                      margin: const EdgeInsets.only(left: 10,right: 10,top: 15),
                      padding: const EdgeInsets.only(top: 80),
                      height: 200,
                      width: MediaQuery.of(context).size.width-20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(image: AssetImage("images/"+img.elementAt(index)),fit: BoxFit.contain)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(_allUser[index] ['first'],
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: AppColor.backGroundColor
                            ),
                          ),
                          Text(_allUser[index] ['second'],
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: AppColor.backGroundColor
                            ),),
                          const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(_allUser[index] ['third'].toString(),
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.backGroundColor.withOpacity(0.6)
                                ),
                              ),
                              const SizedBox(width: 5,),
                              Text(_allUser[index] ['fourth'],
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.backGroundColor.withOpacity(0.4)
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ],
          )
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        selectedItemColor: AppColor.backGroundColor,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,
        items: const [
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

