import 'package:get/state_manager.dart';
import 'package:ecommerce/screens/sign_in/Models/global_user_info.dart';
import 'package:ecommerce/screens/sign_in/Models/user_info.dart';
import 'package:ecommerce/screens/sign_in/signIn_services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Models/UserModel.dart';

class SigninController extends GetxController {
  SignInServices service = SignInServices();
  String? email;
  String? password;
  bool remmberMe = false;

  UserModel? user;
  logIn() async {
    print(email);
    print(password);
    print(remmberMe.toString());
    user = await service.logIn(email!, password!);
    print(user);

    final box = GetStorage();
    box.write('token', '${user!.access_token}');

    GlobalUserInfo.name = user!.user!.user_name;
    GlobalUserInfo.email = user!.user!.email;
    GlobalUserInfo.phone = user!.user!.number_phone;
    GlobalUserInfo.role = user!.user!.role_id;
    GlobalUserInfo.city = user!.address![0].city;
    GlobalUserInfo.token = user!.access_token;
  }
}
