import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:washmyclothes/utils/constant/colors.dart';

// TextStyle h1TextStyle(Color? color) {
//   return TextStyle(
//       color: color ?? AppColors.primaryBlackColor,
//       // fontFamily: Constant.font_family_poppins,
//       fontWeight: FontWeight.w500,
//       fontSize: 18.sp);
// }

TextStyle h1TextStyle(Color? color) {
  return TextStyle(
    color: color ?? AppColors.primaryBlackColor,
    fontSize: 25.sp,
    fontFamily: 'Outfit',
    fontWeight: FontWeight.w500,
    height: 0,
  );
}

TextStyle appbarTextStyle(Color? color) {
  return TextStyle(
    color: color ?? AppColors.primaryBlackColor,
    fontSize: 20.sp,
    fontFamily: 'Outfit',
    fontWeight: FontWeight.w500,
    height: 0,
  );
}

TextStyle h2TextStyle(Color? color) {
  return TextStyle(
    color: color ?? AppColors.primaryGreyColor,
    fontSize: 13.sp,
    fontFamily: 'Outfit',
    fontWeight: FontWeight.w500,
    height: 0,
  );
}

// TextStyle h2TextStyle(Color? color) {
//   return TextStyle(
//       color: color ?? AppColors.primaryBlackColor,
//       // fontFamily: Constant.font_family_poppins,
//       fontWeight: FontWeight.bold,
//       letterSpacing: 1,
//       fontSize: 16.sp);
// }

TextStyle h3TextStyle(Color? color) {
  return TextStyle(
      color: color ?? AppColors.primaryBlackColor,
      // fontFamily: Constant.font_family_poppins,
      fontWeight: FontWeight.bold,
      letterSpacing: 1,
      fontSize: 14.sp);
}

TextStyle h4TextStyle(Color? color) {
  return TextStyle(
      color: color ?? AppColors.primaryBlackColor,
      fontFamily: "Outfit",
      fontWeight: FontWeight.w600,
      letterSpacing: 1,
      fontSize: 12.sp);
}

TextStyle firstTextStyle(Color? color) {
  return TextStyle(
      color: color ?? AppColors.primaryBlackColor,
      fontFamily: "Outfit",
      fontWeight: FontWeight.w500,
      fontSize: 12.sp);
}

TextStyle secondTextStyle(Color? color) {
  return TextStyle(
      color: color ?? AppColors.primaryBlackColor,
      fontFamily: "Outfit",
      fontWeight: FontWeight.w500,
      fontSize: 12.sp);
}

textregular(
  Color? color,
) {
  return TextStyle(
    color: color ?? AppColors.primaryBlackColor,
    fontSize: 10,
    fontFamily: 'Outfit',
    fontWeight: FontWeight.w500,
    height: 0,
  );
}
