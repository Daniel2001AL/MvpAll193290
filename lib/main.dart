import 'package:flutter/material.dart';
import 'package:mvp_all/pages/login.dart';
import 'package:mvp_all/pages/logintwo.dart';
import 'package:mvp_all/pages/navigation.dart';
import 'package:mvp_all/pages/passRecover.dart';
import 'package:mvp_all/pages/progressView.dart';
import 'package:mvp_all/pages/register.dart';
import 'package:mvp_all/splash/splas_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const SplashView(),
      initialRoute: '/',
      routes: {
        '/': (context) => const OnBoarding(),
        'splash': (BuildContext context) => const SplashView(),
        '/login': (BuildContext context) => const Login(),
        'progress': (BuildContext context) => const ProgressView(),
        '/register_page': (BuildContext context) => const RegisterPage(),
        '/recover_pass': (BuildContext context) => const RecoverPass(),
        '/login_panel': (context) => const LoginPanel(),
      },
    );
  }
}
