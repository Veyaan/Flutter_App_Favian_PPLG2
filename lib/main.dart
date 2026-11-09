import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
  return GetMaterialApp(
    title: "Belajar Flutter GetX",
    initialRoute: Routes.login,
    getPages: Routes.pages,
  );
  }
}

