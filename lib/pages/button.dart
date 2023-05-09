import 'package:flutter/cupertino.dart';
import 'color.dart';

class AppLargeButton extends StatelessWidget {
  final Color? backgroundColor;
  final Color? textColor;
  final String text;
  final Function()? onTap;
  final bool? isBorder;

  const AppLargeButton({Key? key,
    this.backgroundColor,
    this.textColor,
    this.onTap,
    this.isBorder:false,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w= MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(left: 120,right: 120),
        height: 70,
        width: MediaQuery.of(context).size.width-240,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 2,
              color: AppColor.backGroundColor,
            )
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: textColor
            ),
          ),
        ),
      ),
    );
  }
}
