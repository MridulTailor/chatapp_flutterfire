import 'package:chatapp_flutterfire/common/values/values.dart';
import 'package:chatapp_flutterfire/common/widgets/widgets.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'index.dart';
import '../../common/values/colors.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget _buildLogo() {
      return Container(
        width: 110.w,
        margin: EdgeInsets.only(top: 84.h),
        child: Column(children: [
          Container(
            alignment: Alignment.center,
            height: 76.w,
            width: 76.w,
            margin: EdgeInsets.symmetric(horizontal: 15.w),
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo.png'),
                  fit: BoxFit.cover,
                ),
                color: AppColors.primaryBackground,
                boxShadow: [
                  Shadows.primaryShadow,
                ],
                borderRadius: BorderRadius.all(Radius.circular(35))),
          ),
          Container(
            margin: EdgeInsets.only(top: 15.h, bottom: 15.h),
            child: Text("Let's Chat",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.thirdElement,
                  fontWeight: FontWeight.w600,
                  fontSize: 18.sp,
                  height: 1,
                )),
          )
        ]),
      );
    }

    Widget _buildThirdPartyLogin() {
      return Container(
        width: 295.w,
        margin: EdgeInsets.only(bottom: 280.h),
        child: Column(
          children: [
            Text(
              "Sign In with social networks.",
              style: TextStyle(
                  color: AppColors.primaryText,
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp),
            ),
            Padding(
                padding: EdgeInsets.only(top: 30.h, left: 50.w, right: 50.w),
                child: btnFlatButtonWidget(
                    onPressed: () {
                      controller.handleSignIn();
                    },
                    title: "Google Sign In")),
          ],
        ),
      );
    }

    return Scaffold(
        body: Center(
            child: Column(
      children: [_buildLogo(), Spacer(), _buildThirdPartyLogin()],
    )));
  }
}
