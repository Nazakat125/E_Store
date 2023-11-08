import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product/Utils/AppColor.dart';
import 'package:product/View/Home/Componets/AppTitleBar.dart';
import 'package:product/View/Home/Componets/products.dart';
import 'package:product/View/Home/Componets/story_list.dart';
import 'package:product/Widgets/CustomImage.dart';
import 'package:product/Widgets/CustomSizeBox.dart';
import 'package:product/Widgets/CustomText.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List item = [
    ['assets/images/graphic_card.png','Graphic Cards'],
    ['assets/images/fason.png','Fashion'],
    ['assets/images/property.png','Property'],
    ['assets/images/graphic_card.png','Graphic Cards'],
    ['assets/images/fason.png','Fashion'],
    ['assets/images/property.png','Property'],
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white10,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTitleBar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Welcome Faz Sam,',
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.blue,
                    ),
                    CustomSizeBox(
                      height: 11.h,
                    ),
                    StoryList(),
                    CustomSizeBox(
                      height: 27.h,
                    ),
                    Product(),
                    CustomSizeBox(
                      height: 23.h,
                    ),
                    Center(
                      child: Container(
                        height: 36.h,
                        width: 233.w,
                        decoration: BoxDecoration(
                          color: AppColor.yellow50,
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        child:    Center(
                          child: CustomText(
                            text: 'See all Feature Ads',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColor.blue,
                          ),
                        ),
                      ),
                    ),
                    CustomSizeBox(
                      height: 16.h,
                    ),
                    CustomText(
                      text: 'Categories',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColor.blue,
                    ),
                    CustomSizeBox(
                      height: 8.h,
                    ),
                    Container(
                      height: 250.h,
                      width: double.infinity,
                      child: GridView.builder(
                        itemCount: item.length,
                        physics: BouncingScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:  EdgeInsets.only(right: 16.w,bottom: 16.h),
                              child: Container(
                                height: 115.h,
                                width: 125.w,
                                decoration: BoxDecoration(
                                  color: AppColor.white,
                                    borderRadius: BorderRadius.circular(10.r),
                                    border: Border.all(color: AppColor.yellow,width:3.w)
                                ),
                                child: Column(
                                  children: [
                                    CustomImage(image: item[index][0],width: 117.w,height: 83.h,),
                                    CustomText(
                                      text: item[index][1],
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w500,
                                      color: AppColor.blue,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },),
                    )


                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
