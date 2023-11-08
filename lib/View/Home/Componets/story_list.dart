import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product/Utils/AppColor.dart';
import 'package:product/Widgets/CustomImage.dart';
import 'package:product/Widgets/CustomSizeBox.dart';
import 'package:product/Widgets/CustomText.dart';
class StoryList extends StatelessWidget {
   StoryList({super.key});
  List itmes = [
    ['assets/images/your_story.png', 'Your Story'],
    ['assets/images/s_smart.png', 's-mart...'],
    ['assets/images/samsung.png', 'samsung...'],
    ['assets/images/watches.png', 'watchst...'],
    ['assets/images/samsung.png', 'samsung...'],
  ];
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100.h,
      width: double.infinity,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: itmes.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 12.w),
            child: Column(
              children: [
                CustomImage(
                  image: itmes[index][0],
                  height: 78.h,
                  width: 78.w,
                ),
                CustomSizeBox(
                  height: 3.h,
                ),
                CustomText(
                  text: itmes[index][1],
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColor.black,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
