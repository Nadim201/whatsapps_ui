import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapps_ui/Screen/SplashScreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp UI',
      theme: ThemeData(
        primaryColor: Colors.green.shade400,
        textTheme: TextTheme(
          headlineLarge:
              GoogleFonts.openSans(fontSize: 20, color: Colors.black),
          headlineMedium:
              GoogleFonts.openSans(fontSize: 16, color: Colors.black),
          titleLarge: GoogleFonts.openSans(fontSize: 20, color: Colors.black),
          titleMedium: GoogleFonts.openSans(fontSize: 16, color: Colors.black),
          titleSmall: GoogleFonts.openSans(fontSize: 16, color: Colors.black),
          bodyLarge: GoogleFonts.openSans(fontSize: 20, color: Colors.black),
          bodyMedium: GoogleFonts.openSans(fontSize: 16, color: Colors.black),
          bodySmall: GoogleFonts.openSans(fontSize: 14, color: Colors.black),
        ),
        bottomAppBarTheme: const BottomAppBarTheme(
          color: Colors.white,
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff02590F),
        ),
      ),
      home: const SplashScreen(),
    ),
  );
}
