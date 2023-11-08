import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product/Utils/AppColor.dart';
import 'package:product/Widgets/CustomImage.dart';
import 'package:product/Widgets/CustomSizeBox.dart';
import 'package:product/Widgets/CustomText.dart';
class Product extends StatelessWidget {
   Product({super.key});
  List itmes = [
    ['assets/images/car.png', 'Bugatti Sport Edition 2023...','USD 2,637,000','5' ],
    ['assets/images/p47.png', 'P47 Wireless Headphones Bluetooth...','USD 62.40','4.9' ],
    ['assets/images/car.png', 'Bugatti Sport Edition 2023...','USD 2,637,000','5' ],
    ['assets/images/p47.png', 'P47 Wireless Headphones Bluetooth...','USD 62.40','4.9' ],
  ];
  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 270.h,
      width: double.infinity,
      child: ListView.builder(
        itemCount: itmes.length,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return     Padding(
            padding:  EdgeInsets.only(right: 10.w),
            child: SizedBox(
              height: 270.h,
              width:185.w  ,
              child: Card(
                color: AppColor.white,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.r)),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 8.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              CustomImage(
                                image: itmes[index][0],
                                height: 140.h,
                                width: 170.w,
                              ),
                              Positioned(
                                  right: 10,
                                  top: 5,
                                  child: Icon(
                                    Icons.favorite,
                                    color: AppColor.gray,
                                    size: 30.sp,
                                  ))
                            ],
                          ),
                          CustomSizeBox(height: 8.h,),
                          CustomText(
                            text: itmes[index][1],
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColor.blue,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: itmes[index][2],
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColor.orange,
                              ),
                              CircleAvatar(
                                radius: 20.r,
                                backgroundColor: AppColor.white10,
                                child: CustomImage(image: 'assets/images/lock.png',height: 20.h,width: 20.w,),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 8.w,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.star,color: AppColor.yellow,size: 20.sp,),
                              CustomSizeBox(width: 3.w,),
                              CustomText(
                                text: itmes[index][3],
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColor.black,
                              ),
                            ],
                          ),
                          Container(
                            height: 22.h,
                            width: 70.w,
                            decoration: BoxDecoration(
                                color: AppColor.yellow,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(10.r))
                            ),
                            child:Center(
                              child: CustomText(
                                text: 'Featured',
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColor.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          );
        },),
    );
  }
}
