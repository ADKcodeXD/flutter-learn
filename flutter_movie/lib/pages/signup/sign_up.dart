import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie/common/constant/colors.dart';
import 'package:flutter_movie/common/widgets/button.dart';
import 'package:flutter_movie/common/widgets/input.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignUpPageState();
  }
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _fullnamecontroller = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

  void _handleRegister() {
    print('Register');
  }

  Widget _buildSignUpLogo() {
    return Container(
        width: 300.w,
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 40.h),
        child: const Text(
          'Sign Up',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 0, 0, 0),
            fontFamily: 'Mediumfont',
          ),
        ));
  }

  Widget _buildSignUpForm() {
    return Container(
      width: 280.w,
      child: Column(children: [
        InputTextField(controller: _fullnamecontroller, hintText: 'Full Name'),
        InputTextField(
            controller: _emailcontroller, marginTop: 20.h, hintText: 'Email'),
        InputTextField(
            controller: _passwordcontroller,
            marginTop: 20.h,
            hintText: 'Password'),
        Container(
          margin: EdgeInsets.only(top: 20.h),
          child: MyTextbutton(
              voidCallback: _handleRegister,
              text: 'Create Account',
              btnColor: AppColors.secondaryElement),
        ),
      ]),
    );
  }

  Widget _buildSignUpThirtyLogin() {
    return Container(
      width: 300.w,
      margin: EdgeInsets.symmetric(vertical: 60.h),
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
                  voidCallback: _handleRegister,
                  containerHeight: 44.w,
                  containerWidth: 88.w,
                  imageSize: 30.w,
                ),
                MyImageButton(
                  imageName: 'twitter',
                  voidCallback: _handleRegister,
                  containerHeight: 44.w,
                  containerWidth: 88.w,
                  imageSize: 30.w,
                ),
                MyImageButton(
                  imageName: 'facebook',
                  voidCallback: _handleRegister,
                  containerHeight: 44.w,
                  containerWidth: 88.w,
                  imageSize: 30.w,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildHaveAccount() {
    return Container(
      width: 270.w,
      margin: EdgeInsets.only(bottom: 30.h),
      child: MyTextbutton(
          voidCallback: () {
            Navigator.pushNamed(context, "/sign-in");
          },
          text: 'Have Account?',
          btnColor: Color.fromARGB(0, 0, 0, 0)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryElementText,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          backgroundColor: Color.fromARGB(0, 0, 0, 0),
          elevation: 0,
          title: Text(
            '注册',
            style: TextStyle(color: Colors.white),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new),
            color: AppColors.primaryElement,
          )),
      body: Container(
          child: Center(
        child: Column(
          children: <Widget>[
            _buildSignUpLogo(),
            _buildSignUpForm(),
            _buildSignUpThirtyLogin(),
            _buildHaveAccount()
          ],
        ),
      )),
    );
  }
}
