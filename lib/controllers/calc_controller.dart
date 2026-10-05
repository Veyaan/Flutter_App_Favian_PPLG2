import 'package:get/get.dart';

class CalcController extends GetxController {
  var hasilHitung = 0.0.obs;

  void tambah(double angka1, double angka2) {
    double hasiltambah = angka1 + angka2;

    hasilHitung.value = hasiltambah;
  }
  void kurang(double angka1, double angka2) {
    double hasilkurang = angka1 - angka2;

    hasilHitung.value = hasilkurang;
  }
  void kali(double angka1, double angka2) {
    double hasilkali = angka1 * angka2;

    hasilHitung.value = hasilkali;
  }
  void bagi(double angka1, double angka2) {
    double hasilbagi = angka1 / angka2;

    hasilHitung.value = hasilbagi;
  }
}