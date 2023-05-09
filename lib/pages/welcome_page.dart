import 'package:challenge_app/pages/button.dart';
import 'package:challenge_app/pages/color.dart';
import 'package:challenge_app/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: Center(
        child: Column(
          children: [
            Expanded(
              child: Container(
                  height: 400,
                  width: 400,
                  margin: EdgeInsets.only(top: 70),
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage('images/pics1.png'),
                        fit: BoxFit.fitHeight
                    ),
                  )),
            ),
            SizedBox(height: 80,),
            Text('Learn at home!',
              style: GoogleFonts.titanOne(textStyle:
                TextStyle(
                color: AppColor.backGroundColor,
                fontSize: 45,
                fontWeight: FontWeight.bold
            ),
            ),
            ),
          SizedBox(height: 25,)  ,
            Text('effectively and efficiently',
              style: TextStyle(
                color: Colors.grey.withOpacity(0.6),
                fontSize: 24
              ),
            ),
            SizedBox(height: 80,),
            AppLargeButton(text: 'Start Now',textColor: Colors.white,backgroundColor: AppColor.backGroundColor,onTap: (){Get.to(()=>HomePage());},)
          ],
        )
      )),
    );
  }
}
