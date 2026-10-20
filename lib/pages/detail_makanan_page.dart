import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/detail_makanan_controller.dart';
import 'package:get/get.dart';

class DetailMakananPage extends StatelessWidget {
  const DetailMakananPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DetailMakananController());

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 197, 134),
      appBar: AppBar(
        title: const Text("Detail Makanan"),
        backgroundColor: const Color.fromARGB(255, 124, 15, 15),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            const SizedBox(height: 10),

            Text(
              controller.makanan.namaMakanan,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 25, 152, 33),
              ),
            ),

            const SizedBox(height: 8),

            Text(
              "Harga: ${controller.makanan.harga}",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 248, 247, 247),
              ),
            ),

            const SizedBox(height: 12),

            Text(
              "Rating: ${controller.makanan.rating}",
              style: const TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 16),

            const Text(
              "Deskripsi:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),

            const SizedBox(height: 5),

            Text(
              controller.makanan.deskripsi,
              style: const TextStyle(fontSize: 15),
            ),

            const SizedBox(height: 16),

            const Text(
              "Review:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 6, 2, 0),
              ),
            ),

            const SizedBox(height: 5),

            Text(
              controller.makanan.review,
              style: const TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}