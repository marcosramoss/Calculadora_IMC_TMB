import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:imctmbcalc/pages/splash_page.dart';
import 'constants/constantes.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.black));
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        primaryColor: const Color(corPadrao),
      ),
      home: const SplashPage(),
    );
  }
}
