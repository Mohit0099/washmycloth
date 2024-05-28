import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:washmyclothes/utils/constant/colors.dart';
import 'package:washmyclothes/utils/constant/textstyle.dart';
import 'package:washmyclothes/utils/routes/routes_name.dart';
import 'package:washmyclothes/widgets/primarybutton.dart';

class Loginview extends StatelessWidget {
  final Function()? onPress;
  const Loginview({Key? key, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        height: 220.h,
        padding: EdgeInsets.all(10.r),
        decoration: BoxDecoration(
          color: AppColors.primaryWhiteColor,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: AppColors.primaryGreyColor.withOpacity(0.2),
                offset: Offset(
                  0.r,
                  5.r,
                )),
          ],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.r),
            bottomRight: Radius.circular(10.r),
            topRight: Radius.circular(10.r),
          ),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
                top: 10.h,
                child: _inputContainer(
                  'Enter your email',
                  Icons.email_outlined,
                )),
            Positioned(
                top: 70.h,
                child: _inputContainersuffix('Enter your password',
                    Icons.lock_outline, Icons.visibility)),
            Positioned(
                top: 140.h,
                child: Text(
                  "Remember me",
                  style: textregular(
                    AppColors.primaryBlackColor,
                  ),
                )),
            Positioned(
                left: 210.w,
                top: 140.h,
                child: Text(
                  "Forgot Password?",
                  style: textregular(
                    AppColors.primaryBlackColor,
                  ),
                )),
            Positioned(
              left: 75.w,
              top: 185.h,
              child:
                  // primarybutton(
                  //   height: 40.h,
                  //   width: 150.w,
                  //   btntext: "Login",
                  //   onpress: () {
                  //     Navigator.pushNamed(context, RoutesName.bottomnav);
                  //   },
                  // )
                  Container(
                height: 40.h,
                width: 150.w,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(5)),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.secondarymainColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15), // <-- Radius
                    ),
                  ),
                  onPressed: onPress,
                  child: Text(
                    "Login",
                    style: h2TextStyle(AppColors.primaryWhiteColor),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Padding signup() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: Container(
      height: 320.h,
      padding: EdgeInsets.all(10.r),
      decoration: BoxDecoration(
        color: AppColors.primaryWhiteColor,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: AppColors.primaryGreyColor.withOpacity(0.2),
              offset: Offset(
                0.r,
                5.r,
              )),
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10.r),
          bottomRight: Radius.circular(10.r),
          topLeft: Radius.circular(10.r),
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
              top: 10.h, child: _inputContainer('Name', Icons.account_circle)),
          Positioned(
              top: 70.h,
              child: _inputContainer(
                'Enter your email',
                Icons.email_outlined,
              )),
          Positioned(
              top: 130.h,
              child: _inputContainersuffix(
                  'Enter your password', Icons.lock_outline, Icons.visibility)),
          Positioned(
              top: 190.h,
              child: _inputContainer('Phone Number', Icons.phone_outlined)),
          Positioned(
            top: 250.h,
            child: RichText(
              text: TextSpan(
                text: 'I agree with the Terms ',
                style: textregular(AppColors.primaryGreyColor),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Condition',
                    style: textregular(AppColors.primaryBlackColor),
                  ),
                  TextSpan(
                    text: ' &',
                    style: textregular(AppColors.primaryGreyColor),
                  ),
                  TextSpan(
                    text: ' Privacy Policy',
                    style: textregular(AppColors.primaryBlackColor),
                  ),
                ],
              ),
            ),
          ),
          // _text('I agree with the Terms Condition & Privacy Policy')),
          Positioned(
            left: 75.w,
            top: 285.h,
            child: primarybutton(
              height: 40.h,
              width: 150.w,
              btntext: "Sign Up".toUpperCase(),
            ),
          )
        ],
      ),
    ),
  );
}

Container buttonContainer(String text, Color textColor, [Color? borderColor]) {
  return Container(
    width: 140.w,
    decoration: ShapeDecoration(
      shape: RoundedRectangleBorder(
        side: BorderSide(width: 0.50, color: borderColor ?? textColor),
        borderRadius: BorderRadius.circular(8.sp),
      ),
      color: borderColor != null ? Colors.transparent : textColor,
    ),
    child: Center(
      child: Text(
        text,
        style: TextStyle(
          color: borderColor != null ? textColor : textColor,
          fontSize: 16,
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w400,
          height: 0,
        ),
      ),
    ),
  );
}

Widget _inputContainer(
  String hintText,
  IconData? preicon,
) {
  return Container(
    height: 40.h,
    width: 300.w,
    decoration: ShapeDecoration(
      shape: RoundedRectangleBorder(
        side: const BorderSide(width: 0.50, color: AppColors.primaryGreyColor),
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    child: TextFormField(
      style: TextStyle(fontSize: 15.sp, color: AppColors.primaryBlackColor),
      cursorColor: AppColors.primaryBlackColor,
      decoration: InputDecoration(
        hintText: hintText,
        border: InputBorder.none,
        contentPadding: EdgeInsets.all(16.r),
        hintStyle: h2TextStyle(AppColors.primaryGreyColor),
        prefixIcon: Icon(
          preicon,
          size: 18.sp,
          color: AppColors.primaryGreyColor,
        ),
      ),
    ),
  );
}

Widget _inputContainersuffix(
    String hintText, IconData? preicon, IconData? sufficon) {
  return Container(
    height: 40.h,
    width: 300.w,
    decoration: ShapeDecoration(
      shape: RoundedRectangleBorder(
        side: const BorderSide(width: 0.50, color: AppColors.primaryGreyColor),
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    child: TextFormField(
      style: TextStyle(fontSize: 15.sp, color: AppColors.primaryBlackColor),
      cursorColor: AppColors.primaryBlackColor,
      decoration: InputDecoration(
        hintText: hintText,
        border: InputBorder.none,
        contentPadding: EdgeInsets.all(16.r),
        hintStyle: h2TextStyle(AppColors.primaryGreyColor),
        prefixIcon: Icon(
          preicon,
          size: 18.sp,
          color: AppColors.primaryGreyColor,
        ),
        suffixIcon: Icon(
          sufficon,
          color: AppColors.primaryGreyColor,
        ),
      ),
    ),
  );
}

// Widget _text(String text, {TextDecoration? textDecoration}) {
//   return Text(
//     text,
//     style: TextStyle(
//       color: AppColors.primaryBlackColor,
//       fontSize: 10,
//       fontFamily: 'Outfit',
//       fontWeight: FontWeight.w300,
//       height: 0,
//       decoration: textDecoration,
//     ),
//   );
// }
