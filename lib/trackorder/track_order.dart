import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:washmyclothes/utils/constant/colors.dart';
import 'package:washmyclothes/utils/constant/imagename.dart';
import 'package:washmyclothes/utils/constant/textstyle.dart';
import 'package:washmyclothes/utils/routes/routes_name.dart';
import 'package:washmyclothes/widgets/primarybutton.dart';

class TrackOrderPage extends StatefulWidget {
  const TrackOrderPage({super.key});

  @override
  State<TrackOrderPage> createState() => _TrackOrderPageState();
}

class _TrackOrderPageState extends State<TrackOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarymainColor,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              RoutesName.bottomnav,
              (routes) => false,
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.arrow_back_ios),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Order Track",
          style: h2TextStyle(AppColors.primaryBlackColor),
        ),
        backgroundColor: AppColors.primarymainColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.r),
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                  height: 60.h,
                  width: double.infinity,
                  child: Image.asset(Imagecall.track1)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Order placed",
                        style: textregular(AppColors.primarytextColor)),
                    Text("Order ready   ",
                        style: textregular(AppColors.primarytextColor)),
                    Text("Delivered",
                        style: textregular(AppColors.primarytextColor)),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 600.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.primaryWhiteColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 1.h,
                        ),
                        Container(
                            padding: EdgeInsets.all(5.r),
                            height: 25.h,
                            width: 110.w,
                            decoration: BoxDecoration(
                                color: AppColors.redColor.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Text("Payment Pending",
                                  style:
                                      textregular(AppColors.primaryWhiteColor)),
                            )),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 100.w,
                              height: 120.h,
                              padding: EdgeInsets.all(12.r),
                              decoration: BoxDecoration(
                                  color: AppColors.primarymainColor,
                                  border: Border.all(
                                      color: AppColors.secondarymainColor),
                                  borderRadius: BorderRadius.circular(10.r)),
                              child: Image.asset(
                                Imagecall.premimum,
                                height: 130.h,
                              ),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10.w,
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: 'Order id-',
                                    style:
                                        h2TextStyle(AppColors.primaryGreyColor),
                                    children: [
                                      TextSpan(
                                          text: '#1466846544',
                                          style: h2TextStyle(
                                              AppColors.primaryBlackColor)),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.w,
                                ),
                                Text("Services",
                                    style: textregular(
                                        AppColors.primarytextColor)),
                                SizedBox(
                                  height: 10.w,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      // padding: EdgeInsets.all(10.r),
                                      height: 25.h,
                                      width: 80.w,
                                      decoration: BoxDecoration(
                                          color: AppColors.primarymainColor,
                                          borderRadius:
                                              BorderRadius.circular(5.r)),
                                      child: Center(
                                        child: Text("Wash and fold",
                                            style: textregular(
                                                AppColors.primarytextColor)),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Container(
                                      // padding: EdgeInsets.all(10.r),
                                      height: 25.h,
                                      width: 80.w,
                                      decoration: BoxDecoration(
                                          color: AppColors.primarymainColor,
                                          borderRadius:
                                              BorderRadius.circular(5.r)),
                                      child: Center(
                                        child: Text("dry cleaning",
                                            style: textregular(
                                                AppColors.primarytextColor)),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.w,
                                ),
                                SizedBox(
                                  width: 200.w,
                                  child: outlinebutton(
                                    btntext: "Chat",
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Center(
                          child: Container(
                            color: AppColors.secondarymainColor,
                            height: 0.2.h,
                            width: 300.w,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Serial number",
                                    style: textregular(
                                        AppColors.primarytextColor)),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text("f-546",
                                    textAlign: TextAlign.center,
                                    style: textregular(
                                        AppColors.primaryBlackColor)),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Column(
                                children: [
                                  Text("Date",
                                      style: textregular(
                                          AppColors.primarytextColor)),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text("25/02/24",
                                      textAlign: TextAlign.center,
                                      style: textregular(
                                          AppColors.primaryBlackColor)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Column(
                                children: [
                                  Text("Total Payment",
                                      style: textregular(
                                          AppColors.primarytextColor)),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text("\$\25",
                                      textAlign: TextAlign.center,
                                      style: textregular(
                                          AppColors.primaryBlackColor)),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          padding: EdgeInsets.all(10.r),
                          height: 125.h,
                          decoration: BoxDecoration(
                              color: AppColors.primarymainColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Service",
                                      style: textregular(
                                          AppColors.primarytextColor)),
                                  Text("Order date",
                                      style: textregular(
                                          AppColors.primarytextColor)),
                                  Text("Amount",
                                      style: textregular(
                                          AppColors.primaryBlackColor)),
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Container(
                                color: AppColors.primaryBlackColor
                                    .withOpacity(0.2),
                                height: 1.h,
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Washing",
                                          style: textregular(
                                              AppColors.primarytextColor)),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text("Iron",
                                          style: textregular(
                                              AppColors.primarytextColor)),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text("Dry clean",
                                          style: textregular(
                                              AppColors.primarytextColor)),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("1 items              ",
                                          style: textregular(
                                              AppColors.primarytextColor)),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text("2 items",
                                          style: textregular(
                                              AppColors.primarytextColor)),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text("3 items",
                                          style: textregular(
                                              AppColors.primarytextColor)),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("\$45",
                                          style: textregular(
                                              AppColors.primaryBlackColor)),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text("\$50",
                                          style: textregular(
                                              AppColors.primaryBlackColor)),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text("\$60",
                                          style: textregular(
                                              AppColors.primaryBlackColor)),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Container(
                                color: AppColors.primaryBlackColor
                                    .withOpacity(0.2),
                                height: 1.h,
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Total",
                                      style: textregular(
                                          AppColors.primaryBlackColor)),
                                  Text("9 items    ",
                                      style: textregular(
                                          AppColors.primaryBlackColor)),
                                  Text("\$69",
                                      style: textregular(
                                          AppColors.primaryBlackColor)),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            outlinebutton(
                              btntext: "Track orders",
                            ),
                            fillbutton(
                              btntext: "Make payment",
                            ),
                          ],
                        )
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
