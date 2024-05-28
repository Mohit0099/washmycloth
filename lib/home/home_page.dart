import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:washmyclothes/model.dart/testmodel.dart';
import 'package:washmyclothes/utils/constant/colors.dart';
import 'package:washmyclothes/utils/constant/imagename.dart';
import 'package:washmyclothes/utils/constant/textstyle.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:washmyclothes/utils/routes/routes_name.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List bannerimages = [
    Imagecall.b1,
    Imagecall.b1,
    Imagecall.b1,
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blue, // Status bar color
    ));
    return Scaffold(
      backgroundColor: AppColors.primarymainColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 110.h,
            decoration: BoxDecoration(
                color: AppColors.secondarymainColor,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://picsum.photos/seed/picsum/200/500"),
                    radius: 20.r,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "Hello John!\nG-3, samrat apna ghar",
                    style: textregular(AppColors.primaryWhiteColor),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Special for you",
                  style: h2TextStyle(AppColors.primarytextColor),
                ),
                Container(
                  height: 150.h,
                  child: ImageSlideshow(
                      width: double.infinity,
                      initialPage: 0,
                      indicatorColor: Color.fromARGB(255, 187, 191, 196),
                      indicatorBackgroundColor: AppColors.primaryGreyColor,
                      onPageChanged: (value) {},
                      autoPlayInterval: 3000,
                      isLoop: true,
                      children: List.generate(bannerimages.length, (index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.sp),
                            image: DecorationImage(
                                image: AssetImage(bannerimages[index]),
                                fit: BoxFit.cover),
                          ),
                        );
                      })),
                ),
              ],
            ),
          ),
          Expanded(child: activeorder()),
        ],
      ),
    );
  }

  Widget activeorder() {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.all(10.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            homewidget(),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Active orders",
              style: h2TextStyle(AppColors.primarytextColor),
            ),
            ListView.builder(
                itemCount: order.length,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(
                    parent: NeverScrollableScrollPhysics()),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      bottom: 10.r,
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 60.h,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x16000000),
                            blurRadius: 18.80,
                            offset: Offset(0, 6),
                            spreadRadius: 0,
                          ),
                          BoxShadow(
                            color: Color(0x1E2196F3),
                            blurRadius: 18.60,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10.r),
                            child: Center(
                              child: Image.asset(order[index].image.toString(),
                                  height: 40.h, width: 40.w, fit: BoxFit.cover),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 15.h),
                              RichText(
                                text: TextSpan(
                                  text: 'Order id - ',
                                  style:
                                      textregular(AppColors.primarytextColor),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: order[index].orderid,
                                      style: textregular(
                                          AppColors.primaryBlackColor),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 5.h),
                              RichText(
                                text: TextSpan(
                                  text: 'Service - ',
                                  style:
                                      textregular(AppColors.primarytextColor),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: order[index].services,
                                      style: textregular(
                                          AppColors.primaryBlackColor),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Text(
                            order[index].paid.toString(),
                            style: h2TextStyle(order[index].paid == "paid"
                                ? AppColors.greenColor
                                : AppColors.redColor),
                          ),
                          SizedBox(
                            width: 20.w,
                          )
                        ],
                      ),
                    ),
                  );
                }),
            SizedBox(
              height: 80.h,
            ),
          ],
        ),
      ),
    );
  }

  Widget homewidget() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Service categories',
              style: h2TextStyle(AppColors.primarytextColor),
            ),
            Text(
              'Pickup schedule ->',
              style: textregular(AppColors.primarytextColor),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
          height: 80.h,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: contents.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RoutesName.pickuppage);
                  },
                  child: Container(
                    width: 72.w,
                    margin: const EdgeInsets.only(right: 15),
                    //  pa: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: AppColors.primaryWhiteColor,
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(color: AppColors.primaryGreyColor)),
                    child: Card(
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      margin: EdgeInsets.only(
                        left: 0.r,
                        bottom: 10.h,
                        top: 0.h,
                      ),
                      // width: 220.w,

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.circular(8).r, // Image border
                            child: SizedBox.fromSize(
                              // Image radius
                              child: Center(
                                child: Image.asset(
                                    contents[index].image.toString(),
                                    height: 40.h,
                                    width: 40.w,
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Center(
                            child: SizedBox(
                              width: 90.w,
                              child: Text(
                                contents[index].title.toString(),
                                textAlign: TextAlign.center,
                                maxLines: 4,
                                style: textregular(AppColors.primarytextColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
