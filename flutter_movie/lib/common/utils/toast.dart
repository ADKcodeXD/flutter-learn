import 'package:flutter/material.dart';
import 'package:flutter_movie/common/constant/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void showMeToast({
  required String msg,
  ToastGravity position = ToastGravity.BOTTOM,
  Color backgroundColor = AppColors.alphaDarkElement,
  double fontsize = 16.0,
  Color textColor = const Color.fromARGB(255, 255, 255, 255),
  int duration = 2,
}) {
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: position,
      timeInSecForIosWeb: duration,
      backgroundColor: backgroundColor,
      textColor: textColor,
      fontSize: fontsize);
}
