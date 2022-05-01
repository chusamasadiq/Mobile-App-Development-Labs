import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  // Customized Light Theme
  static ThemeData get lightTheme => ThemeData(
      fontFamily: GoogleFonts.lato().fontFamily, //
      primarySwatch: Colors.deepPurple,
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black)));

  // Customized Dark Theme
  static ThemeData get darkTheme => ThemeData(brightness: Brightness.dark);
}
