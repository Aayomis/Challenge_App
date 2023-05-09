import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'button.dart';
import 'color.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
                height: 400,
                width: 400,
                margin: EdgeInsets.only(top: 60),
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('images/pics3.png'),
                      fit: BoxFit.fitHeight
                  ),
                )
            ),
            SizedBox(height: 20,),
            Text('Let\'s Start!',
              style: GoogleFonts.titanOne(textStyle:
              TextStyle(
                  color: AppColor.backGroundColor,
                  fontSize: 45,
                  fontWeight: FontWeight.bold
              ),
              ),
            ),
            SizedBox(height: 40,),
            Container(
              padding: EdgeInsets.only(left: 30,top: 20,right: 20,bottom: 20),
              margin: EdgeInsets.only(left:30,right: 30),
              height: 70,
              width: MediaQuery.of(context).size.width-60,
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
              child: Text('Email',
                style: TextStyle(
                  fontSize: 20,
                  color: AppColor.backGroundColor,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 20,),
           Container(
             padding: EdgeInsets.only(left: 30,top: 20,right: 10,bottom: 20),
             margin: EdgeInsets.only(left:30,right: 30),
             height: 70,
             width: MediaQuery.of(context).size.width-60,
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
                 Text('Password',
                   style: TextStyle(
                       fontSize: 20,
                       color: AppColor.backGroundColor,
                       fontWeight: FontWeight.bold
                   ),
                 ),
                 SizedBox(width: 190,),
                 Icon(Icons.remove_red_eye_sharp,color: Colors.grey,)
               ],
             ),
           ),
            SizedBox(height: 30,),
            AppLargeButton(text: 'Sign in',textColor: Colors.white,backgroundColor: AppColor.backGroundColor,),
            SizedBox(height: 30,),
            Column(
              children: [
                Row(
              mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account?',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.withOpacity(0.6),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text('Sign up',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColor.backGroundColor
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
