import 'package:flowfood/pages/frambuazl%C4%B1cheescake_page.dart';
import 'package:flutter/material.dart';
import 'package:flowfood/pages/home_page.dart';
import 'package:flowfood/pages/login_page.dart';
import 'package:flowfood/pages/splash_page.dart';
import 'package:flowfood/pages/mutfak_page.dart';
import 'package:flowfood/pages/tatli_page.dart';
import 'package:flowfood/pages/yemek_page.dart';
import 'package:flowfood/pages/kokteyl_page.dart';
import 'package:flowfood/pages/menuolustur_page.dart';


class Routes {
  static const String splash = '/';
  static const String login = '/login';
  static const String home = '/home';
  static const String mutfak = '/mutfak';
  static const String tatli = '/tatli';
  static const String yemek = '/yemek';
  static const String kokteyl = '/kokteyl';
  static const String menuolustur = '/menuolustur';
  static const String frambuazlicheescake = '/frambuazlicheescake';
  

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => SplashPage());
      case login:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case home:
        return MaterialPageRoute(builder: (_) => HomePage());
      case mutfak:
        return MaterialPageRoute(builder: (_) => MutfakPage());
      case tatli:
        return MaterialPageRoute(builder: (_) => TatliPage());
      case yemek:
        return MaterialPageRoute(builder: (_) => YemekPage());
      case kokteyl:
        return MaterialPageRoute(builder: (_) => KokteylPage());
      case menuolustur:
        return MaterialPageRoute(builder: (_) => MenuOlusturPage());
      case frambuazlicheescake:
        return MaterialPageRoute(builder: (_) => FrambuazliCheescakePage());
      default:
        return MaterialPageRoute(builder: (_) => SplashPage());
    }
  }
}