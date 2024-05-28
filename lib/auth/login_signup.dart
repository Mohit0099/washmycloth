import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:washmyclothes/utils/constant/colors.dart';
import 'package:washmyclothes/utils/constant/textstyle.dart';
import 'package:washmyclothes/utils/routes/routes_name.dart';
import 'package:washmyclothes/widgets/login_signup_widget.dart';

class LoginSignup extends StatefulWidget {
  const LoginSignup({super.key});

  @override
  State<LoginSignup> createState() => _LoginSignupState();
}

class _LoginSignupState extends State<LoginSignup> {
  bool isSignupScreen = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarymainColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 50.h,
                  ),
                  Center(
                    child: Text('Wash my Clothes',
                        style: h1TextStyle(AppColors.primaryBlackColor)),
                  ),
                  SizedBox(height: 15.h),
                  SizedBox(
                    width: 300.w,
                    child: Text(
                        'The ultimate solution for seamless laundry service. Schedule pickups, relax, and let us handle the rest.',
                        textAlign: TextAlign.center,
                        style: h2TextStyle(AppColors.primaryGreyColor)),
                  ),
                  SizedBox(height: 35.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignupScreen = true;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(10.sp),
                          height: isSignupScreen ? 60.h : 50.h,
                          decoration: BoxDecoration(
                            color: isSignupScreen
                                ? Colors.white
                                : Colors.transparent,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.r),
                              topLeft: Radius.circular(10.r),
                            ),
                          ),
                          child: buttonContainer(
                            'Login in',
                            isSignupScreen
                                ? AppColors.secondarymainColor
                                : AppColors.primaryGreyColor,
                            isSignupScreen
                                ? AppColors.secondarymainColor
                                : AppColors.primaryGreyColor,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignupScreen = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(10.sp),
                          height: isSignupScreen ? 50.h : 60.h,
                          decoration: BoxDecoration(
                            color: isSignupScreen
                                ? Colors.transparent
                                : Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.r),
                              topLeft: Radius.circular(10.r),
                            ),
                          ),
                          child: buttonContainer(
                            'Sign up',
                            isSignupScreen
                                ? AppColors.primaryGreyColor
                                : AppColors.secondarymainColor,
                            isSignupScreen
                                ? AppColors.primaryGreyColor
                                : AppColors.secondarymainColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  if (isSignupScreen)
                    Loginview(onPress: () {
                      Navigator.pushNamed(context, RoutesName.bottomnav);
                    }),
                  if (!isSignupScreen) signup()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
