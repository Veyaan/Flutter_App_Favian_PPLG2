import 'package:get/get.dart';
import 'package:flutter_application_1/pages/regist.dart';
import 'package:flutter_application_1/pages/confirmregist.dart';
import 'package:flutter_application_1/pages/detail_makanan_page.dart';
import 'package:flutter_application_1/pages/list_makanan.dart';
import 'package:flutter_application_1/pages/main_menu.dart';
import 'package:flutter_application_1/pages/login_page.dart';

class Routes {
  static const String register = '/regist';
  static const String confreg = '/confirmregist';
  static const String list_makanan = "/list_makanan";
  static const String detail_makanan = "/detail_makanan";
  static const String main_menu = "/main_menu";
  static const String login = "/login_page";

  static final pages = [
    GetPage(
      name: register,
      page: () => Register(),
    ),
    GetPage(
      name: confreg,
      page: () => confirm(),
    ),
    GetPage(
      name: list_makanan,
      page: () => ListMakananPage(),
    ),
    GetPage(
      name: detail_makanan,
      page: () => DetailMakananPage(),
    ),
    GetPage(
      name: main_menu,
      page: () => MainMenu(),
    ),
    GetPage(
      name: login,
      page: () => LoginPage(),
    ),
  ];
}