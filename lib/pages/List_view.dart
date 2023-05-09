import 'package:flutter/cupertino.dart';

import 'color.dart';
class listDataItem extends StatelessWidget {
  String itemName;
  listDataItem(this.itemName);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: const EdgeInsets.only(left: 10,right: 10,top: 20),
        padding: const EdgeInsets.only(top: 80),
        height: 200,
        width: MediaQuery.of(context).size.width-20,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(image: AssetImage("images/01.png"),fit: BoxFit.contain)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(itemName[0],
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColor.backGroundColor
              ),
            ),
            Text(itemName[1],
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColor.backGroundColor
              ),),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(itemName[2],
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColor.backGroundColor.withOpacity(0.6)
                  ),
                ),
                const SizedBox(width: 5,),
                Text(itemName[3],
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
      ),
    );
  }
}

