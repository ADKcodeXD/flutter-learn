import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_movie/common/constant/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget InputTextField({
  required TextEditingController controller,
  TextInputType keyboardType = TextInputType.text,
  String hintText = "请输入内容",
  bool isPassword = false,
  double marginTop = 0,
}) {
  return Container(
    height: 44.h,
    margin: EdgeInsets.only(top: marginTop),
    padding: EdgeInsets.symmetric(horizontal: 5.w),
    decoration: BoxDecoration(
      color: AppColors.secondaryBackground,
      borderRadius: AppRadius.br10px,
    ),
    child: TextField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hintText,
        contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 9),
        hintStyle: TextStyle(
            color: AppColors.secondaryText,
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            fontFamily: 'MediumFont'),
      ),
      style: TextStyle(
        color: AppColors.secondaryText,
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
      ),
      maxLines: 1,
      autocorrect: false,
      obscureText: isPassword,
    ),
  );
}
