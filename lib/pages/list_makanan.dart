import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/list_makanan_controller.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 197, 134),
      appBar: AppBar(
        title: const Text("List Makanan"),
        backgroundColor: const Color.fromARGB(255, 124, 15, 15),
        foregroundColor: Colors.white,
      ),
      body: Obx(
        () => ListView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: controller.dataMakanan.length,
          itemBuilder: (context, index) {
            final makanan = controller.dataMakanan[index];

            return Dismissible(
              key: ValueKey(makanan.namaMakanan),
              direction: DismissDirection.endToStart,
              background: Container(
                color: Colors.red,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 20),
                child: const Icon(Icons.delete, color: Colors.white),
              ),

              onDismissed: (direction) {
                controller.dataMakanan.removeAt(index);
              },
              child: Card(
                color: Colors.white,
                child: ListTile(
                  title: Text(
                    makanan.namaMakanan,
                    style: const TextStyle(fontSize: 18),
                  ),
                  subtitle: Text(
                    makanan.harga,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 25, 152, 33),
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Get.toNamed(Routes.detail_makanan, arguments: makanan);
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
