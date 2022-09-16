import 'package:flutter/material.dart';
import 'package:loveplus/ui/loginscreen.dart';
import 'package:loveplus/ui/signupscreen.dart';
import 'package:loveplus/ui/splashscreen.dart';
import 'package:loveplus/ui/welcomescreen.dart';

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
      routes: {
        'splashScreen': (context) => const SplashScreen(),
        'welcomeScreen': (context) => WelcomeScreen(),
        'loginScreen': (context) => const LoginScreen(),
        'signUpScreen': (context) => const SignUpScreen(),
      },
      title: 'Love plus',
      theme: ThemeData(
        textTheme: appTextTheme(),
        inputDecorationTheme: textFieldDecoration(),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const SplashScreen();
  }
}

TextTheme appTextTheme() => const TextTheme().apply(fontFamily: 'Amaranth');

InputDecorationTheme textFieldDecoration() => InputDecorationTheme(
      hintStyle: const TextStyle(fontFamily: 'Amaranth'),
      prefixIconColor: const Color(0xFF2F1699),
      suffixIconColor: const Color(0xFF2F1699),
      labelStyle:
          const TextStyle(color: Color(0xFF2F1699), fontFamily: 'Amaranth'),
      floatingLabelStyle: const TextStyle(
          backgroundColor: Colors.white,
          fontWeight: FontWeight.bold,
          color: Color(0xFF2F1699),
          fontSize: 18
          // decoration: TextDecoration.overline,
          ),
      fillColor: Colors.white,
      filled: true,
      enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Color(0xFF2F1699), width: 0.5, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(10)),
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Color(0xFF2F1699), width: 0.5, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(10)),
    );
