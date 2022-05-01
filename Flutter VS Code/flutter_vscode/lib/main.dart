import 'package:flutter/material.dart';
import 'package:flutter_vscode/pages/forgotpassword_page.dart';
import 'package:flutter_vscode/pages/home_page.dart';
import 'package:flutter_vscode/pages/login_page.dart';
import 'package:flutter_vscode/pages/register_page.dart';
import 'package:flutter_vscode/widgets/themes.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),

      //Theme

      //Here we defined the mode of theme

      themeMode: ThemeMode.light,

      //Here We used Customized Theme.
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,

      // Defined the Routes of Pages
      routes: {
        "/": (context) => const LoginPage(),
        "home": (context) => const HomePage(),
        "register": (context) => const RegisterPage(),
        "forgotpassword": (context) => const ForgotPassword()
      },
    );
  }
}
