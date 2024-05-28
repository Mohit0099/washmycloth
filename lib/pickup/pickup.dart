import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:washmyclothes/auth/test.dart';
import 'package:washmyclothes/model.dart/testmodel.dart';
import 'package:washmyclothes/utils/constant/colors.dart';
import 'package:washmyclothes/utils/constant/textstyle.dart';
import 'package:washmyclothes/utils/routes/routes_name.dart';
import 'package:washmyclothes/widgets/primarybutton.dart';

class PickupPage extends StatefulWidget {
  const PickupPage({super.key});

  @override
  State<PickupPage> createState() => _PickupPageState();
}

class _PickupPageState extends State<PickupPage> {
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
            padding: EdgeInsets.all(8.0.r),
            child: const Icon(Icons.arrow_back_ios),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Pickup Schedule",
          style: appbarTextStyle(AppColors.primarytextColor),
        ),
        backgroundColor: AppColors.primarymainColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Categories",
                style: h2TextStyle(AppColors.primarytextColor),
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
                      return Container(
                        width: 72.w,
                        margin: const EdgeInsets.only(right: 15),
                        //  pa: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: AppColors.primaryWhiteColor,
                            borderRadius: BorderRadius.circular(10.r),
                            border:
                                Border.all(color: AppColors.primaryGreyColor)),
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
                                    style:
                                        textregular(AppColors.primarytextColor),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Pick up date",
                style: h2TextStyle(AppColors.primarytextColor),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 150.h,
                decoration: BoxDecoration(
                    color: AppColors.primaryWhiteColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: EasyDateTimeLine(
                    initialDate: DateTime.now(),
                    onDateChange: (selectedDate) {},
                    headerProps: EasyHeaderProps(
                      padding: EdgeInsets.all(5.r),

                      // monthStyle: TextRagular(AppColors.PrimarygreenColor),
                      selectedDateFormat:
                          SelectedDateFormat.fullDateMonthAsStrDY,
                    ),
                    activeColor: Colors.transparent,
                    dayProps: EasyDayProps(
                      height: 80.h,
                      dayStructure: DayStructure.dayStrDayNum,
                      inactiveDayStyle: DayStyle(
                        dayNumStyle: h2TextStyle(AppColors.primarytextColor),
                        monthStrStyle: h2TextStyle(AppColors.primarytextColor),
                        dayStrStyle: h2TextStyle(AppColors.primarytextColor),
                      ),
                      activeDayStyle: DayStyle(
                          dayNumStyle: h2TextStyle(AppColors.primaryWhiteColor),
                          monthStrStyle:
                              h2TextStyle(AppColors.primaryWhiteColor),
                          dayStrStyle: h2TextStyle(AppColors.primaryWhiteColor),
                          decoration: BoxDecoration(
                              color: AppColors.secondarymainColor,
                              borderRadius: BorderRadius.circular(20.r))),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Pick up time",
                style: h2TextStyle(AppColors.primarytextColor),
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(height: 130.h, child: NumberPage()),
              SizedBox(
                height: 10.h,
              ),
              Center(
                child: Container(
                    width: 150.w,
                    padding: EdgeInsets.all(12.r),
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.secondarymainColor),
                        borderRadius: BorderRadius.circular(15.r)),
                    child: Center(
                        child: Text(
                      "Set pick up time",
                      style: h2TextStyle(AppColors.secondarymainColor),
                    ))),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "Pick up instruction for rider",
                style: h2TextStyle(AppColors.primarytextColor),
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(
                height: 40.h,
                width: double.infinity,
                padding: EdgeInsets.all(10.r),
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.primarytextColor),
                    borderRadius: BorderRadius.circular(10.r)),
                child: TextFormField(
                  style: TextStyle(
                      fontSize: 15.sp, color: AppColors.primaryBlackColor),
                  cursorColor: AppColors.primaryBlackColor,
                  decoration: InputDecoration(
                    hintText: "Pick up instructions",
                    border: InputBorder.none,
                    // contentPadding: EdgeInsets.all(16.r),
                    hintStyle: h2TextStyle(AppColors.primaryGreyColor),
                    // prefixIcon: Icon(
                    //   preicon,
                    //   size: 18.sp,
                    //   color: AppColors.primaryGreyColor,
                    // ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  outlinebutton(
                    btntext: "Chat",
                  ),
                  fillbutton(
                    btntext: "Confirm order",
                  ),
                ],
              ),
              SizedBox(
                height: 50.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
