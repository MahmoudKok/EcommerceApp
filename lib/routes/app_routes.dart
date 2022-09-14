<<<<<<< HEAD
=======
import 'package:ecommerce/Bindings/details_binding.dart';
import 'package:ecommerce/screens/details/details_screen.dart';
>>>>>>> f92700bcb80239e254aa1cb481ce172f5c7a9ed4
import 'package:ecommerce/screens/home/home_screen.dart';
import 'package:get/get.dart';
import 'package:ecommerce/Bindings/signUp_bindings.dart';
import 'package:ecommerce/Bindings/sing_in_binding.dart';
import 'package:ecommerce/screens/sign_in/sign_in_screen.dart';
import 'package:ecommerce/screens/sign_up/sign_up_screen.dart';
import 'package:ecommerce/screens/splash/splash_screen.dart';

import '../screens/login_success/login_success_screen.dart';

class AppPages {
  AppPages._();

  static const INITIAL = '/splash';
  static const signin = '/signIn';
  static const signup = '/singup';
  static const succse = '/succse';
  static const home = '/home';
<<<<<<< HEAD
=======
  static const details = '/details';
>>>>>>> f92700bcb80239e254aa1cb481ce172f5c7a9ed4

  static final routes = [
    GetPage(
      name: INITIAL,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: signin,
      page: () => SignInScreen(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: signup,
      page: () => SignUpScreen(),
      binding: SignUpBindings(),
    ),
    GetPage(
      name: succse,
      page: () => LoginSuccessScreen(),
    ),
    GetPage(
      name: home,
      page: () => HomeScreen(),
    ),
<<<<<<< HEAD
=======
    GetPage(
      name: details,
      page: () => DetailsScreen(),
      binding: DetailsBinding(),
    ),
>>>>>>> f92700bcb80239e254aa1cb481ce172f5c7a9ed4
  ];
}
