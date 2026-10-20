import 'package:get/get.dart';

class confirmregistController extends GetxController {
  late String username;
  late String email;
  late String phone;
  late String adress;
  late String password;

  @override
  void onInit() {
    super.onInit();

    final arguments = Get.arguments;

    username = arguments['username'];
    email = arguments['email'];
    phone = arguments['phone'];
    adress = arguments['adress'];
    password = arguments['password'];
  }
}