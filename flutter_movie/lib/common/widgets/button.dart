import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_movie/common/constant/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget MyTextbutton({
  required VoidCallback voidCallback,
  double width = double.infinity,
  double height = 44.0,
  Color btnColor = AppColors.primaryElement,
  String text = 'btn',
  Color fontColor = AppColors.primaryElementText,
  String fontName = 'MediumFont',
  FontWeight fontWeight = FontWeight.w600,
}) {
  return Container(
    width: width,
    height: height,
    child: ElevatedButton(
      onPressed: voidCallback,
      style: ElevatedButton.styleFrom(
        primary: btnColor,
        shape: RoundedRectangleBorder(
          borderRadius: AppRadius.br5px,
        ),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontFamily: fontName,
            color: fontColor,
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            height: 1),
      ),
    ),
  );
}
