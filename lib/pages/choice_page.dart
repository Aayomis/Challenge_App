import 'package:challenge_app/pages/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color.dart';
import 'large_button.dart';

class ChoicePage extends StatelessWidget {
  const ChoicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: h,
        child: Stack(
          children: [
            _headSection(),
            _textContainer(),
            _boxContainer(),
            _appButton()
          ],
        ),
      ),
    );
  }
  _headSection() {
    return Positioned(
      top: 100,
        left: 0,
        right: 0,
        child: Container(
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('images/pics2.png'),
              fit:BoxFit.fitHeight
            )
          ),
        ));
  }
  _textContainer() {
    return Stack(
      children: [
        Positioned(
          bottom: 380,
            left: 30,
            right: 0,
            child: Text('Get unlimited',
          style: GoogleFonts.titanOne(textStyle:
          TextStyle(
              color: AppColor.backGroundColor,
              fontSize: 45,
              fontWeight: FontWeight.bold
          ),
          ),
        )),
        Positioned(
          bottom: 330,
            left: 105,
            right: 0,
            child: Text('access!',
              style: GoogleFonts.titanOne(textStyle:
              TextStyle(
                  color: AppColor.backGroundColor,
                  fontSize: 45,
                  fontWeight: FontWeight.bold
              ),
              ),
            ))
      ],
    );
  }
  _boxContainer() {
    return Stack(
      children: [
        Positioned(
          bottom: 150,
          left: 15,
          child: Container(
            padding: EdgeInsets.only(left:15,top: 20),
            height: 140,
            width: 170,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('\$11.99',
                  style: TextStyle(
                    color: AppColor.backGroundColor,
                    fontSize: 26,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('\$11.99',
                      style: TextStyle(
                        color: AppColor.backGroundColor.withOpacity(0.6),
                        fontSize: 16,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text('per month',
                      style: TextStyle(
                        color: Colors.grey.withOpacity(0.5),
                        fontSize: 16,
                        fontWeight: FontWeight.w700
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('\$143.99',
                      style: TextStyle(
                          color: AppColor.backGroundColor.withOpacity(0.6),
                          fontSize: 16,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text('per year',
                      style: TextStyle(
                          color: Colors.grey.withOpacity(0.5),
                          fontSize: 16,
                          fontWeight: FontWeight.w700
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
         ),
        Positioned(
          bottom: 280,
            left: 115,
            child: Container(
              padding: EdgeInsets.only(left: 6,top: 2,bottom: 2,right: 5),
              height: 20,
              width: 58,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent[100],
                borderRadius: BorderRadius.circular(5)
              ),
              child: Text('Monthly',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500
                ),
              ),
            )),
        Positioned(
          bottom: 150,
          right: 15,
          child: Container(
            padding: EdgeInsets.only(left:15,top: 20),
            height: 140,
            width: 170,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('\$4.99',
                  style: TextStyle(
                      color: AppColor.backGroundColor,
                      fontSize: 26,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('\$4.99',
                      style: TextStyle(
                          color: AppColor.backGroundColor.withOpacity(0.6),
                          fontSize: 16,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text('per month',
                      style: TextStyle(
                          color: Colors.grey.withOpacity(0.5),
                          fontSize: 16,
                          fontWeight: FontWeight.w700
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('\$53.99',
                      style: TextStyle(
                          color: AppColor.backGroundColor.withOpacity(0.6),
                          fontSize: 16,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text('per year',
                      style: TextStyle(
                          color: Colors.grey.withOpacity(0.5),
                          fontSize: 16,
                          fontWeight: FontWeight.w700
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
            bottom: 280,
            right: 25,
            child: Container(
              padding: EdgeInsets.only(left: 10,top: 2,bottom: 2,right: 9),
              height: 20,
              width: 58,
              decoration: BoxDecoration(
                  color: Colors.redAccent[100],
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Text('Yearly',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w500
                ),
              ),
            ))
      ],
    );
  }
  _appButton() {
    return Positioned(
      bottom: 45,
        child: AppButton(text: 'Go Premium',textColor: Colors.white,backgroundColor: AppColor.backGroundColor,));
  }
}
