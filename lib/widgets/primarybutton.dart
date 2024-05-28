import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:washmyclothes/utils/constant/colors.dart';
import 'package:washmyclothes/utils/constant/textstyle.dart';
import 'package:washmyclothes/utils/routes/routes_name.dart';

class primarybutton extends StatelessWidget {
  String? btntext;
  double? height;
  double? width;
  Function? onpress;

  primarybutton(
      {super.key, this.btntext, this.height, this.width, this.onpress});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.secondarymainColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15), // <-- Radius
          ),
        ),
        onPressed: () {
          onpress!();
        },
        child: Text(
          btntext.toString(),
          style: h2TextStyle(AppColors.primaryWhiteColor),
        ),
      ),
    );
    // Container(
    //   height: height,
    //   width: width,
    //   padding: EdgeInsets.all(10.sp),
    //   decoration: ShapeDecoration(
    //     color: AppColors.secondarymainColor,
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(15.sp),
    //     ),
    //     shadows: const [
    //       BoxShadow(
    //         color: Color(0x3F747474),
    //         blurRadius: 17.50,
    //         offset: Offset(4, 4),
    //         spreadRadius: 5,
    //       ),
    //     ],
    //   ),
    //   child: Center(
    //     child: Text(btntext.toString(),
    //         style: h2TextStyle(AppColors.primaryWhiteColor)),
    //   ),
    // );
  }
}

class outlinebutton extends StatelessWidget {
  String? btntext;
  Function? onpress;
  outlinebutton({super.key, this.btntext, this.onpress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onpress!();
      },
      child: Container(
          width: 140.w,
          padding: EdgeInsets.all(12.r),
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.primarytextColor),
              borderRadius: BorderRadius.circular(10.r)),
          child: Center(
              child: Text(
            btntext!,
            style: h2TextStyle(AppColors.primarytextColor),
          ))),
    );
  }
}

class fillbutton extends StatelessWidget {
  String? btntext;
  fillbutton({super.key, this.btntext});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 140.w,
        padding: EdgeInsets.all(12.r),
        decoration: BoxDecoration(
            color: AppColors.secondarymainColor,
            // border: Border.all(color: AppColors.primarytextColor),
            borderRadius: BorderRadius.circular(10.r)),
        child: Center(
            child: Text(
          btntext!,
          style: h2TextStyle(AppColors.primaryWhiteColor),
        )));
  }
}
