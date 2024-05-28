import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:washmyclothes/model.dart/testmodel.dart';
import 'package:washmyclothes/utils/constant/colors.dart';
import 'package:washmyclothes/utils/constant/imagename.dart';
import 'package:washmyclothes/utils/constant/textstyle.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List noticeimage = [
    Imagecall.ready,
    Imagecall.progress,
    Imagecall.delivered,
    Imagecall.ready,
    Imagecall.progress,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarymainColor,
      appBar: AppBar(
        // leading: const Icon(Icons.arrow_back_ios),
        leading: Container(),
        centerTitle: true,
        title: Text(
          "Notification",
          style: appbarTextStyle(AppColors.primarytextColor),
        ),
        backgroundColor: AppColors.primarymainColor,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.r),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: noticedetails.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 10.r),
                      padding: EdgeInsets.all(10.r),
                      decoration: BoxDecoration(
                          color: AppColors.primaryWhiteColor,
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: 'Order id-',
                                      style: h2TextStyle(
                                          AppColors.primaryGreyColor),
                                      children: [
                                        TextSpan(
                                            text: '#1466846544',
                                            style: h2TextStyle(
                                                AppColors.primaryBlackColor)),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    noticedetails[index].time.toString(),
                                    style:
                                        h2TextStyle(AppColors.primaryGreyColor),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              RichText(
                                text: TextSpan(
                                  text: 'Booking date- ',
                                  style:
                                      h2TextStyle(AppColors.primaryGreyColor),
                                  children: [
                                    TextSpan(
                                        text: '05/03/24',
                                        style: h2TextStyle(
                                            AppColors.primaryBlackColor)),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Image.asset(
                                noticedetails[index].image.toString(),
                                height: 20.h,
                                width: 310.w,
                                fit: BoxFit.fill,
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("In progress",
                                      style:
                                          textregular(AppColors.progresscolor)),
                                  Text("Ready to pick",
                                      style: textregular(
                                          noticedetails[index].status == "r" ||
                                                  noticedetails[index].status ==
                                                      "d"
                                              ? AppColors.redColor
                                              : AppColors.primarytextColor)),
                                  Text("Delivered",
                                      style: textregular(
                                          noticedetails[index].status == "d"
                                              ? AppColors.greenColor
                                              : AppColors.primarytextColor)),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 80.h,
            ),
          ],
        ),
      ),
    );
  }
}
