import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie/common/constant/constant.dart';
import 'package:flutter_movie/common/entity/entity.dart';
import 'package:flutter_movie/common/entity/user.dart';
import 'package:flutter_movie/common/widgets/widgets.dart';
import 'package:flutter_movie/common/utils/util.dart';
import 'package:flutter_movie/global.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../common/api/apis.dart';

class SignInPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignInPageState();
  }
}

class _SignInPageState extends State<SignInPage> {
  final _PasswordController = TextEditingController();

  final _EmailController = TextEditingController();

  Future<void> _handleLogin() async {
    if (!checkInputLength(_EmailController.text, 6, 16)) {
      showMeToast(msg: '用户名的长度需在6-16之间');
      return;
    }
    if (!isEmail(_EmailController.text)) {
      showMeToast(msg: '邮箱格式不正确');
      return;
    }
    if (!checkInputLength(_PasswordController.text, 6, 16)) {
      showMeToast(msg: '密码长度也需要在6-16之间');
      return;
    }
    // UserLoginRequestEntity userLoginRequestEntity = UserLoginRequestEntity(
    //     email: _EmailController.text,
    //     password: duSHA256(_PasswordController.text));
    // UserLoginResponseEntity userLoginResponseEntity =
    //     await UserApi.login(requestEntity: userLoginRequestEntity);
    CategoriesResponseEntity categoriesResponseEntity =
        await NewsApi.getCategory();

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
      margin: EdgeInsets.only(top: 30.h),
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
    return Container(
      width: 300.w,
      margin: EdgeInsets.only(top: 20.h),
      child: Column(
        children: <Widget>[
          Text('通过其他账号进行登录？'),
          Padding(
            padding: EdgeInsets.all(10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyImageButton(
                  imageName: 'google',
                  voidCallback: _handleLogin,
                  containerHeight: 44.w,
                  containerWidth: 88.w,
                  imageSize: 30.w,
                ),
                MyImageButton(
                  imageName: 'twitter',
                  voidCallback: _handleLogin,
                  containerHeight: 44.w,
                  containerWidth: 88.w,
                  imageSize: 30.w,
                ),
                MyImageButton(
                  imageName: 'facebook',
                  voidCallback: _handleLogin,
                  containerHeight: 44.w,
                  containerWidth: 88.w,
                  imageSize: 30.w,
                ),
              ],
            ),
          ),
          Container(
            child: MyTextbutton(
                voidCallback: () {
                  Navigator.pushNamed(context, "/sign-up");
                },
                text: '跳转到注册页'),
          )
        ],
      ),
    );
  }

  Widget _buildSignUpButton() {
    return Container(
      width: 270.w,
      margin: EdgeInsets.only(top: 15.h),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyTextbutton(
              voidCallback: _handleLogin,
              width: 120.w,
              text: 'register',
              btnColor: AppColors.darkBackground),
          Spacer(),
          MyTextbutton(
              voidCallback: _handleLogin, width: 120.w, text: 'Sign Up')
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _buildLogo(),
            _buildSignUpForm(),
            // _buildSignUpThirtyLogin(),
            _buildSignUpButton(),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Forget password?',
                  style: TextStyle(
                      color: AppColors.primaryElement,
                      fontSize: 18.sp,
                      fontFamily: 'Myfont'),
                )),
            _buildSignUpThirtyLogin()
          ],
        ),
      )),
    );
  }
}
