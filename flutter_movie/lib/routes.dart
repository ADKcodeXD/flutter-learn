import 'package:flutter_movie/pages/sign/sign_in.dart';
import 'package:flutter_movie/pages/signup/sign_up.dart';
import 'package:flutter_movie/pages/welcomepage/welcome.dart';

var staticRoutes = {
  "/": (context) => WelcomePage(),
  "/sign-in": (context) => SignInPage(),
  "/sign-up": (context) => SignUpPage(),
};
