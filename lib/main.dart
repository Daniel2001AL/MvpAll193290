import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mvp_all/Home/ui/screen/main.dart';
import 'package:mvp_all/Login/ui/screen/login.dart';
import 'package:mvp_all/Login/ui/screen/email_sign_in/login_panel.dart';
import 'package:mvp_all/OnBoardingPage/ui/screen/on_boarding.dart';
import 'package:mvp_all/RecuperarContrasenna/ui/screen/recover_pass.dart';
import 'package:mvp_all/Register/ui/screen/register.dart';
import 'package:mvp_all/colors/colors_views.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyAlRh0ER6k6RSXby3cJdN5QAYyRpNAHIXo",
          appId: "1:983314836931:android:0dd04a50b03418cb9ee176",
          messagingSenderId: "983314836931",
          projectId: "mvpallpets",
          androidClientId:
              "983314836931-kdf4vp9pmd5ajr15rbipctviccca391j.apps.googleusercontent.com"));
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
        canvasColor: ColorsViews.background_color,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => OnBoarding(),
        '/home': (context) => HomeVetApp(),
        '/login': (context) => const Login(),
        '/login_panel': (context) => const LoginPanel(),
        '/register_page': (context) => const RegisterPage(),
        '/recover_pass': (context) => const RecoverPass(),
      },
    );
  }
}
