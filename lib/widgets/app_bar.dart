import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:washmyclothes/utils/constant/colors.dart';
import 'package:washmyclothes/utils/constant/textstyle.dart';

// ignore: must_be_immutable
class AppBarCustom extends StatelessWidget {
  String? title;
  Function? onpress;
  AppBarCustom({Key? key, this.title, this.onpress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.secondarymainColor,
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
      ),
      leading: GestureDetector(
        onTap: () {
          onpress!();
        },
        child: Icon(
          Icons.arrow_back_ios,
          color: AppColors.primaryWhiteColor,
          size: 20.sp,
        ),
      ),
      centerTitle: true,
      title: Text(
        title!,
        style: h2TextStyle(AppColors.primaryWhiteColor),
      ),
    );
  }
}

// ignore: must_be_immutable
class AppBarCustomlead extends StatelessWidget {
  String? title;

  AppBarCustomlead({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.secondarymainColor,
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
      ),
      centerTitle: true,
      leading: const Text(""),
      title: Text(
        title!,
        style: h2TextStyle(AppColors.primaryWhiteColor),
      ),
    );
  }
}
