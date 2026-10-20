import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/confirmregist_controller.dart';
import '../components/custom_text.dart';
import '../components/custom_button.dart';

class confirm extends StatefulWidget {
  const confirm({super.key});

  @override
  State<confirm> createState() => _ConfirmState();
}

class _ConfirmState extends State<confirm> {
  final Controller = Get.put(confirmregistController());

  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000C18),

      appBar: AppBar(
        title: const Text(
          "Confirm Registration",
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
              text: "Registration Details",
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),

            const SizedBox(height: 20),

            CustomText(
              text: "Username: ${Controller.username}",
              fontSize: 18,
            ),

            const SizedBox(height: 15),

            CustomText(
              text: "E-Mail: ${Controller.email}",
              fontSize: 18,
              color: const Color(0xFFD4D4D4),
            ),

            const SizedBox(height: 15),

            CustomText(
              text: "phone: ${Controller.phone}",
              fontSize: 18,
              color: const Color(0xFFD4D4D4),
            ),

            const SizedBox(height: 15),

            CustomText(
              text: "adress: ${Controller.adress}",
              fontSize: 18,
              color: const Color(0xFFD4D4D4),
            ),

            const SizedBox(height: 10),

            Row(
              children: [
                Expanded(
                  child: CustomText(
                    text: hidePassword
                        ? "Password: ••••••••"
                        : "Password: ${Controller.password}",
                    fontSize: 18,
                  ),
                ),

                IconButton(
                  icon: Icon(
                    hidePassword
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: const Color(0xFF4FC1FF),
                  ),
                  onPressed: () {
                    setState(() {
                      hidePassword = !hidePassword;
                    });
                  },
                ),
              ],
            ),

            const SizedBox(height: 20),

            CustomButton(
              text: "OK",
              onPressed: () {
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}