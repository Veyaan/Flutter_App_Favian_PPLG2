import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/calc_controller.dart';
import 'components/custom_text.dart';
import 'components/custom_textfield.dart';
import 'components/custom_button.dart';

class CalculatorUI extends StatelessWidget {
  CalculatorUI({super.key});

  final txtAngka1 = TextEditingController();
  final txtAngka2 = TextEditingController();

  final CalcController controller = Get.put(CalcController());

  Widget operationButton(BuildContext context, String symbol) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: ElevatedButton(
          onPressed: () {
            if (txtAngka1.text.isEmpty || txtAngka2.text.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Angka tidak boleh kosong"),
                  behavior: SnackBarBehavior.floating,
              ),
            );
          return;
        }
            double angka1 = double.parse(txtAngka1.text);
            double angka2 = double.parse(txtAngka2.text);

            if (symbol == "+") {
              controller.tambah(angka1, angka2);
            } else if (symbol == "-") {
              controller.kurang(angka1, angka2);
            } else if (symbol == "×") {
              controller.kali(angka1, angka2);
            } else if (symbol == "÷") {
              controller.bagi(angka1, angka2);
            }
          },
          child: Text(
            symbol,
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calkulator"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CustomText(
              text: "Angka 1",
              fontSize: 18,
            ),

            const SizedBox(height: 8),

            CustomTextField(
              hint: "Masukkan angka pertama",
              txtController: txtAngka1,
            ),

            const SizedBox(height: 20),

            const CustomText(
              text: "Angka 2",
              fontSize: 18,
            ),

            const SizedBox(height: 8),

            CustomTextField(
              hint: "Masukkan angka kedua",
              txtController: txtAngka2,
            ),

            const SizedBox(height: 30),

            Row(
              children: [
                operationButton(context, "+"),
                operationButton(context, "-"),
                operationButton(context, "×"),
                operationButton(context, "÷"),
              ],
            ),

            const SizedBox(height: 20),

            const CustomText(
              text: "Hasil",
              fontSize: 18,
            ),

            const SizedBox(height: 8),

            Obx(
              () => CustomText(
                text: controller.hasilHitung.value.toString(),
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}