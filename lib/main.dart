import 'package:flutter/material.dart';
import 'pages/calc_page.dart';
import 'pages/login_page.dart';
import 'package:get/get.dart';
import 'routes.dart';
import 'pages/detail_makanan_page.dart';
import 'pages/list_makanan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
  return GetMaterialApp(
    title: "Belajar Flutter GetX",
    initialRoute: Routes.list_makanan,
    getPages: Routes.pages,
  );
  }
}

