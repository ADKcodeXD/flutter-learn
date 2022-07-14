import 'package:flutter/material.dart';
import 'package:flutter_movie/common/constant/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WelcomePageState();
  }
}

class _WelcomePageState extends State<WelcomePage> {
  Widget _welcomeHeader() {
    return Container(
      margin: EdgeInsets.only(top: 60.h),
      child: Text(
        'Welcome to Flutter',
        style: TextStyle(
            color: AppColors.primaryText,
            fontSize: 36.sp,
            fontWeight: FontWeight.w600,
            fontFamily: 'Myfont'),
      ),
    );
  }

  Widget _welcomeHeaderDetail() {
    return Container(
        margin: EdgeInsets.only(top: 20.h),
        width: 225.w,
        child: Text(
          'I‘m a Flutter developer bdukashiufshgiufghaifhsaoi',
          style: TextStyle(
              color: AppColors.primaryText,
              fontSize: 24.sp,
              height: 1.5,
              fontFamily: 'Myfont'),
          textAlign: TextAlign.center,
        ));
  }

  Widget _welcomeBody() {
    return Container(
      width: 270.w,
      margin: EdgeInsets.only(top: 10.h),
      child: Column(
        children: <Widget>[
          _BodyItem('feature-1', 'Feature 1gfahoighaoihgioahgoahgoah', 20.h),
          _BodyItem('feature-2', 'Feature 1gfahoigha', 40.h),
          _BodyItem('feature-3', 'Feature 1gfahoighaoihgioahgoahgoah', 40.h),
        ],
      ),
    );
  }

  Widget _BodyItem(String imageName, String summary, double marginTop) {
    return Container(
      margin: EdgeInsets.only(top: marginTop),
      child: Row(
        children: <Widget>[
          Container(
            width: 80.h,
            height: 80.h,
            child: Image.asset('assets/images/$imageName.png'),
          ),
          Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 20.w),
                child: Text(
                  summary,
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 22.sp,
                      height: 1.5,
                      fontFamily: 'Myfont'),
                ),
              )),
        ],
      ),
    );
  }

  Widget _welcomeStartButton() {
    return Container(
        width: 270.w,
        margin: EdgeInsets.only(bottom: 20.h),
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Start'),
          style: ElevatedButton.styleFrom(
              primary: AppColors.primaryElement,
              padding: EdgeInsets.all(10.w),
              textStyle:
                  TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600)),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WelcomePage',
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              _welcomeHeader(),
              _welcomeHeaderDetail(),
              _welcomeBody(),
              Spacer(),
              _welcomeStartButton()
            ],
          ),
        ),
      ),
    );
  }
}
