import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:washmyclothes/utils/constant/colors.dart';
import 'package:washmyclothes/utils/constant/textstyle.dart';

class profilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: AppColors.primaryWhiteColor,
        ),
        actions: [
          Icon(
            Icons.settings,
            color: AppColors.primaryWhiteColor,
          ),
          SizedBox(
            width: 20.w,
          )
        ],
        centerTitle: true,
        title: Text(
          "Profile",
          style: appbarTextStyle(AppColors.primaryWhiteColor),
        ),
        backgroundColor: AppColors.secondarymainColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 700.h,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Color(0xFF2196F3)),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left: 0,
                    top: 100.h,
                    child: Container(
                      width: 361.w,
                      height: 731.h,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x1C000000),
                            blurRadius: 24,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          ),
                          BoxShadow(
                            color: Color(0x1E000000),
                            blurRadius: 30.50,
                            offset: Offset(0, -4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      // child: Stack(
                      //   clipBehavior: Clip.none,
                      //   children: [],
                      // ),
                    ),
                  ),
                  Positioned(
                    left: 140.08,
                    top: 70.44,
                    child: Container(
                      width: 110.0.w,
                      height: 110.0.w,
                      decoration: BoxDecoration(
                        color: AppColors.primaryWhiteColor,
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://static.toiimg.com/thumb/imgsize-23456,msid-108617062,width-600,resizemode-4/108617062.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  profilefield(
                    left: 20.w,
                    top: 180.h,
                    hint: "Enter your Name",
                    name: "Name",
                  ),
                  profilefield(
                    left: 20.w,
                    top: 250.h,
                    hint: "Enter your Email",
                    name: "Email",
                  ),
                  profilefield(
                    left: 20.w,
                    top: 320.h,
                    hint: "Enter your phone",
                    name: "phone",
                  ),
                  profilemenu(
                    top: 400.h,
                    left: 5.w,
                    title: "Privacy Policy",
                    subtile: "All privacy policy and the rules",
                    leading: Icons.list,
                    traling: Icons.arrow_forward_ios,
                  ),
                  profilemenu(
                    top: 450.h,
                    left: 5.w,
                    title: "Terms of service",
                    subtile: "Terms and conditions of compony ",
                    leading: Icons.privacy_tip_outlined,
                    traling: Icons.arrow_forward_ios,
                  ),
                  profilemenu(
                    top: 500.h,
                    left: 5.w,
                    title: "Contact us",
                    subtile: "Reach out our customer care experts",
                    leading: Icons.support_agent,
                    traling: Icons.arrow_forward_ios,
                  ),
                  profilemenu(
                    top: 550.h,
                    left: 5.w,
                    title: "Logout",
                    subtile: "",
                    leading: Icons.logout,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class profilemenu extends StatelessWidget {
  double? left;
  double? top;
  String? title;
  String? subtile;
  IconData? leading;
  IconData? traling;
  profilemenu(
      {super.key,
      this.left,
      this.top,
      this.title,
      this.subtile,
      this.leading,
      this.traling});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Container(
        width: 335.w,
        color: Colors.transparent,
        child: ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: -2),
          leading: Icon(leading),
          title: Text(
            title!,
            style: textregular(AppColors.primaryBlackColor),
          ),
          subtitle: Text(
            subtile!,
            style: textregular(AppColors.primarytextColor),
          ),
          trailing: Icon(
            traling,
            size: 15.sp,
          ),
        ),
      ),
    );
  }
}

class profilefield extends StatelessWidget {
  double? left;
  double? top;
  String? hint;
  String? name;

  profilefield({super.key, this.left, this.top, this.hint, this.name});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name!,
            style: textregular(AppColors.primarytextColor),
          ),
          SizedBox(
            height: 5.h,
          ),
          Container(
            height: 35.h,
            width: 300.w,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                    width: 0.50, color: AppColors.primaryBlackColor),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: TextFormField(
              style: TextStyle(
                  fontSize: 15.sp, color: AppColors.primaryBlackColor),
              cursorColor: AppColors.primaryBlackColor,
              decoration: InputDecoration(
                hintText: hint,
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(16.r),
                hintStyle: textregular(AppColors.primaryGreyColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
