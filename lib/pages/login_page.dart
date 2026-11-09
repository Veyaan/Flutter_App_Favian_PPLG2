import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/components/custom_elevated_button.dart';
import 'package:flutter_application_1/components/custom_textfield.dart';
import 'package:flutter_application_1/components/custom_text.dart';
import 'package:flutter_application_1/controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login page")),
      body: Column(
        children: [
          CustomText(
            text: "Welcome to application",
            fontSize: 25,
            color: const Color.fromARGB(255, 46, 9, 182),
            fontWeight: FontWeight.bold,
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextField(
              hint: "input username",
              txtController: controller.txtUsername,
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextField(
              hint: "input password",
              isPassword: true,
              txtController: controller.txtPassword,
            ),
          ),

          Obx(() {
            return controller.isLoading.value
                ? const CircularProgressIndicator()
                : CustomElevatedbutton(
              text: "Login",
              textColor: const Color.fromARGB(255, 30, 175, 44),
              fontSize: 20,
              onPressed: () {
                controller.login();
              },
            );
          }),
        ],
      ),
    );
  }
}