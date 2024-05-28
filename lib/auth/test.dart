import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:washmyclothes/utils/constant/colors.dart';

class NumberPage extends StatefulWidget {
  const NumberPage({super.key});

  @override
  State<NumberPage> createState() => _NumberPageState();
}

class _NumberPageState extends State<NumberPage> {
  var hour = 0;
  var minute = 0;
  var timeFormat = "AM";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarymainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text(
          //     "Pick Your Time! ${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, "0")} ${timeFormat}",
          //     style:
          //         const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          // const SizedBox(
          //   height: 20,
          // ),
          Container(
            // padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NumberPicker(
                  minValue: 0,
                  maxValue: 12,
                  value: hour,
                  zeroPad: true,
                  infiniteLoop: true,
                  itemWidth: 60.w,
                  itemHeight: 40.h,
                  onChanged: (value) {
                    setState(() {
                      hour = value;
                    });
                  },
                  textStyle: TextStyle(color: Colors.grey, fontSize: 15.sp),
                  selectedTextStyle: TextStyle(
                      color: AppColors.secondarymainColor, fontSize: 15.sp),
                  decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(
                          color: AppColors.primaryBlackColor,
                        ),
                        bottom: BorderSide(color: AppColors.primaryBlackColor)),
                  ),
                ),
                NumberPicker(
                  minValue: 0,
                  maxValue: 59,
                  value: minute,
                  zeroPad: true,
                  infiniteLoop: true,
                  itemWidth: 60.w,
                  itemHeight: 40.h,
                  onChanged: (value) {
                    setState(() {
                      minute = value;
                    });
                  },
                  textStyle: TextStyle(color: Colors.grey, fontSize: 15.sp),
                  selectedTextStyle: TextStyle(
                      color: AppColors.secondarymainColor, fontSize: 15.sp),
                  decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(
                          color: AppColors.primaryBlackColor,
                        ),
                        bottom: BorderSide(color: AppColors.primaryBlackColor)),
                  ),
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          timeFormat = "AM";
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.r, vertical: 10.r),
                        decoration: BoxDecoration(
                            // color: timeFormat == "AM"
                            //     ? Colors.grey.shade800
                            //     : Colors.grey.shade700,
                            border: Border.all(
                          color: timeFormat == "AM"
                              ? AppColors.secondarymainColor
                              : Colors.grey.shade700,
                        )),
                        child: Text(
                          "AM",
                          style: TextStyle(
                              color: timeFormat == "AM"
                                  ? AppColors.secondarymainColor
                                  : Colors.grey.shade700,
                              fontSize: 15.sp),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          timeFormat = "PM";
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.r, vertical: 10.r),
                        decoration: BoxDecoration(
                          // color: timeFormat == "PM"
                          //     ? Colors.grey.shade800
                          //     : Colors.grey.shade700,
                          border: Border.all(
                            color: timeFormat == "PM"
                                ? AppColors.secondarymainColor
                                : Colors.grey.shade700,
                          ),
                        ),
                        child: Text(
                          "PM",
                          style: TextStyle(
                              color: timeFormat == "PM"
                                  ? AppColors.secondarymainColor
                                  : Colors.grey.shade700,
                              fontSize: 15.sp),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
