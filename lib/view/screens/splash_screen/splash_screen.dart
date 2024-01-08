



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sofol/utils/app_images.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/splash_route';

  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //...........app logo.................................................
          Expanded(
            child: Center(
              child: Image.asset(AppImages.appLogo,height: 100.h,width: 200.w,),
            ),
          ),

          //...........app feature image........................................
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(AppImages.appFeaturImage,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}

