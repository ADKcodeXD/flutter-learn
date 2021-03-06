import 'package:flutter/material.dart';
import 'package:flutter_movie/pages/welcomepage/welcome.dart';
import 'package:flutter_movie/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'global.dart';

void main() => Global.init().then((e) => runApp(MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //填入设计稿中设备的屏幕尺寸,单位dp
    return ScreenUtilInit(
      designSize: const Size(375, 750),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: staticRoutes,
          initialRoute: "/",
          title: '这是首页',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
        );
      },
      child: WelcomePage(),
    );
  }
}
