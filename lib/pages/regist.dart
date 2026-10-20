import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/custom_text.dart';
import '../components/custom_textfield.dart';
import '../components/custom_button.dart';
import '../routes.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtUsername = TextEditingController();
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtPhone = TextEditingController();
    TextEditingController txtAdress = TextEditingController();
    TextEditingController txtPassword = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xFF000C18),

      appBar: AppBar(
        title: const Text(
          "Register",
          style: TextStyle(
            color: Color(0xFF4FC1FF),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF000C18),
        elevation: 0,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CustomText(
              text: "Enter your username below",
              fontSize: 14,
              color: Color(0xFF858585),
            ),

            const SizedBox(height: 20),

            CustomTextField(
              hint: "Username",
              txtController: txtUsername,
            ),

            const SizedBox(height: 20),

            const CustomText(
              text: "Enter your E-Mail below",
              fontSize: 14,
              color: Color(0xFF858585),
            ),

            const SizedBox(height: 20),

            CustomTextField(
              hint: "E-Mail",
              txtController: txtEmail,
              keyboardType: TextInputType.emailAddress,
            ),

            const SizedBox(height: 20),

            const CustomText(
              text: "Enter your phone number below",
              fontSize: 14,
              color: Color(0xFF858585),
            ),

            const SizedBox(height: 20),

            CustomTextField(
              hint: "Phone",
              txtController: txtPhone,
              keyboardType: TextInputType.number,
            ),

            const SizedBox(height: 20),

            const CustomText(
              text: "Enter your adress below",
              fontSize: 14,
              color: Color(0xFF858585),
            ),

            const SizedBox(height: 20),

            CustomTextField(
              hint: "adress",
              txtController: txtAdress,
              maxLines: 3,
            ),

            const SizedBox(height: 20),

            const CustomText(
              text: "Enter your password below",
              fontSize: 14,
              color: Color(0xFF858585),
            ),

            const SizedBox(height: 20),

            CustomTextField(
              hint: "Password",
              txtController: txtPassword,
              isPassword: true,
            ),

            const SizedBox(height: 20),

            CustomButton(
              text: "Register",
              onPressed: () {
                Get.toNamed(
                  Routes.confreg,
                  arguments: {
                    'username': txtUsername.text,
                    'email': txtEmail.text,
                    'phone': txtPhone.text,
                    'adress': txtAdress.text,
                    'password': txtPassword.text,
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}