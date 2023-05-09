import 'package:challenge_app/pages/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_text.dart';
class AppButtons extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  double sizeh;
  double? sizew;
  bool? isIcon;
  final Color shadowColor;
  String text;
  IconData? icon;


  AppButtons({Key? key,
    this.isIcon=false,
    this.icon,
    required this.text,
    required this.sizeh,
    this.sizew,
    required this.color,
    required this.backgroundColor,
    required this.shadowColor
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12,top: 12,bottom: 12,right: 12),
      width: 100,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: shadowColor,
                spreadRadius: 1,
                blurRadius: 3,
                offset: const Offset(1, 0),
              blurStyle: BlurStyle.normal
            )
          ]
          ),
      child: isIcon==false?Center(child: AppText(text: text!, color:color)):Center(child: Icon(icon, color:color)),
    );
  }
}

