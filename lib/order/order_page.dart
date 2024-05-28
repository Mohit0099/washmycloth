import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:washmyclothes/utils/constant/colors.dart';
import 'package:washmyclothes/utils/constant/imagename.dart';
import 'package:washmyclothes/utils/constant/textstyle.dart';
import 'package:washmyclothes/utils/routes/routes_name.dart';
import 'package:washmyclothes/widgets/primarybutton.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.primarymainColor,
        appBar: AppBar(
          backgroundColor: AppColors.primarymainColor,
          //leading: const Icon(Icons.arrow_back_ios),
          leading: Container(),
          title: Text('Orders',
              style: appbarTextStyle(AppColors.primarytextColor)),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50.h),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Container(
                height: 40.h,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: AppColors.primaryWhiteColor,
                ),
                child: const TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    color: AppColors.secondarymainColor,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: AppColors.primarytextColor,
                  tabs: [
                    Tab(
                      text: "Active orders",
                    ),
                    Tab(
                      text: "Completed orders",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 260.h,
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
                                          color: AppColors.redColor
                                              .withOpacity(0.4),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Center(
                                        child: Text("Payment Pending",
                                            style: textregular(
                                                AppColors.primaryWhiteColor)),
                                      )),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 90.w,
                                        height: 90.h,
                                        padding: EdgeInsets.all(12.r),
                                        decoration: BoxDecoration(
                                            color: AppColors.primarymainColor,
                                            border: Border.all(
                                                color: AppColors
                                                    .secondarymainColor),
                                            borderRadius:
                                                BorderRadius.circular(10.r)),
                                        child: Image.asset(
                                          Imagecall.premimum,
                                          height: 100.h,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15.w,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 10.w,
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              text: 'Order id-',
                                              style: h2TextStyle(
                                                  AppColors.primaryGreyColor),
                                              children: [
                                                TextSpan(
                                                    text: '#1466846544',
                                                    style: h2TextStyle(AppColors
                                                        .primaryBlackColor)),
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
                                                    color: AppColors
                                                        .primarymainColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.r)),
                                                child: Center(
                                                  child: Text("Wash and fold",
                                                      style: textregular(AppColors
                                                          .primarytextColor)),
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
                                                    color: AppColors
                                                        .primarymainColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.r)),
                                                child: Center(
                                                  child: Text("dry cleaning",
                                                      style: textregular(AppColors
                                                          .primarytextColor)),
                                                ),
                                              ),
                                            ],
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                                style: textregular(AppColors
                                                    .primarytextColor)),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Text("25/02/24",
                                                textAlign: TextAlign.center,
                                                style: textregular(AppColors
                                                    .primaryBlackColor)),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(7.0),
                                        child: Column(
                                          children: [
                                            Text("Total Payment",
                                                style: textregular(AppColors
                                                    .primarytextColor)),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Text("\$\25",
                                                textAlign: TextAlign.center,
                                                style: textregular(AppColors
                                                    .primaryBlackColor)),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      outlinebutton(
                                        btntext: "Track orders",
                                        onpress: () {
                                          Navigator.pushNamed(
                                              context, RoutesName.trackorder);
                                        },
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
                  );
                }),
            Center(child: Text('Completed Order')),
          ],
        ),
      ),
    );
  }
}
