import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie/common/constant/constant.dart';
import 'package:flutter_movie/common/widgets/widgets.dart';
import 'package:flutter_movie/common/utils/util.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignUpPageState();
  }
}

class _SignUpPageState extends State<SignUpPage> {
  final _PasswordController = TextEditingController();

  final _EmailController = TextEditingController();

  void _handleLogin() {
    print(_EmailController.text);
  }

  Widget _buildLogo() {
    return Container(
        width: 350.w,
        margin: EdgeInsets.only(top: 44.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 76.w,
              width: 76.w,
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    child: Container(
                      height: 76.w,
                      width: 76.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(76.w * 0.5),
                          color: Colors.white,
                          boxShadow: [AppShadow.primaryShadow]),
                    ),
                  ),
                  Positioned(
                    child: Image.asset(
                      'assets/images/logo.png',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 22.h),
              child: Text(
                'Flutter',
                style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'MediumFont'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.h),
              child: Text(
                'Wtashi wa flutter newer',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.secondaryText,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'MediumFont'),
              ),
            ),
          ],
        ));
  }

  Widget _buildSignUpForm() {
    return Container(
      width: 270.w,
      margin: EdgeInsets.only(top: 50.h),
      child: Column(
        children: [
          InputTextField(
              controller: _EmailController,
              hintText: 'Email',
              keyboardType: TextInputType.emailAddress,
              marginTop: 0),
          InputTextField(
            controller: _PasswordController,
            hintText: 'Password',
            keyboardType: TextInputType.text,
            isPassword: true,
            marginTop: 20.h,
          ),
        ],
      ),
    );
  }

  Widget _buildSignUpThirtyLogin() {
    return Container();
  }

  Widget _buildSignUpButton() {
    return Container(
      width: 270.w,
      margin: EdgeInsets.only(top: 20.h),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyTextbutton(
              voidCallback: _handleLogin, width: 120.w, text: 'Sign Up'),
          Spacer(),
          MyTextbutton(
              voidCallback: _handleLogin, width: 120.w, text: 'register')
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            _buildLogo(),
            _buildSignUpForm(),
            // Spacer(),
            // _buildSignUpThirtyLogin(),
            _buildSignUpButton(),
          ],
        ),
      ),
    );
  }
}
