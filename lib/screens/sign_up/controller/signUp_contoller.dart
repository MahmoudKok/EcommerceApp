import 'package:get/state_manager.dart';
import 'package:ecommerce/screens/sign_in/Models/UserModel.dart';
import 'package:ecommerce/screens/sign_up/models/signup_request_model.dart';
import 'package:ecommerce/screens/sign_up/models/signup_user_info.dart';
import 'package:ecommerce/screens/sign_up/signUp_services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../sign_in/Models/global_user_info.dart';

class SignUpController extends GetxController {
  var service = SignUpServices();
  SignUpRequestModel? user = SignUpRequestModel();
  signUp() async {
    print(user.toString());

    var newUser = await service.signUp(user!);

    if (newUser == null) {
      return null;
    } else {
      final box = GetStorage();
      box.write('token', '${newUser!.access_token}');
      GlobalUserInfo.name = newUser!.user!.user_name;
      GlobalUserInfo.email = newUser!.user!.email;
      GlobalUserInfo.phone = newUser!.user!.number_phone;
      GlobalUserInfo.role = newUser!.user!.role_id;
      GlobalUserInfo.city = newUser!.address![0].city;
      GlobalUserInfo.token = newUser!.access_token;
      return newUser;
    }
  }
}
