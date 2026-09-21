import 'package:flutter/material.dart';

class CalculatorUI extends StatelessWidget {
  const CalculatorUI({super.key});

  Widget operationButton(String symbol) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: ElevatedButton(
          onPressed: () {}, // Empty
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
            const Text(
              "Angka 1",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),

            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Masukkan angka pertama",
              ),
              keyboardType: TextInputType.number,
            ),

            const SizedBox(height: 20),

            const Text(
              "Angka 2",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),

            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Masukkan angka kedua",
              ),
              keyboardType: TextInputType.number,
            ),

            const SizedBox(height: 30),

            Row(
              children: [
                operationButton("+"),
                operationButton("-"),
                operationButton("×"),
                operationButton("÷"),
              ],
            ),

            const SizedBox(height: 20),

            SizedBox(
              height: 55,
              child: ElevatedButton(
                onPressed: () {}, // Empty
                child: const Text(
                  "=",
                  style: TextStyle(fontSize: 28),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}