import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product/Utils/AppColor.dart';
import 'package:product/Widgets/CustomImage.dart';
import 'package:product/Widgets/CustomSizeBox.dart';
class AppTitleBar extends StatelessWidget {
  const AppTitleBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/home_title.png'),
            fit: BoxFit.cover,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.w, top: 30.h),
            child: CustomImage(image: 'assets/images/menu.png',height: 20.h,width: 28.w,)
          ),
          Column(
            children: [
              CustomSizeBox(
                height: 5.h,
              ),
              Container(
                height: 38.h,
                width: 55.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5.r),
                      bottomLeft: Radius.circular(5.r),
                    ),
                    color: AppColor.white10
                ),
                child:CustomImage(
                  image: 'assets/images/bell.png',
                  height: 34.h,
                  width: 34.w,
                ),
              ),
              CustomSizeBox(
                height: 5.h,
              ),
              Container(
                height: 38.h,
                width: 55.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5.r),
                      bottomLeft: Radius.circular(5.r),
                    ),
                    color: AppColor.white10
                ),
                child:CustomImage(
                  image: 'assets/images/message.png',
                  height: 34.h,
                  width: 34.w,
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
