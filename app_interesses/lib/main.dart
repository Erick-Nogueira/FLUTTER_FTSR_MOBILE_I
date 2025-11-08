import 'package:app_interesses/screens/detalhes.dart';
import 'package:app_interesses/screens/detalhesdois.dart';
import 'package:app_interesses/screens/esqueleto.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Aplicacao());
}

class Aplicacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App de Interesses',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0A0F1F),
        primaryColor: const Color(0xFF0D47A1), 
        colorScheme: ColorScheme.dark(
          primary: const Color(0xFF2196F3), 
          secondary: const Color(0xFF00BCD4), 
          surface: const Color(0xFF101522),
   
          onPrimary: Colors.white,
          onSecondary: Colors.white,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0D47A1),
          centerTitle: true,
          elevation: 4,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: const Color(0xFF0D1B2A),
          selectedItemColor: const Color(0xFF00B0FF),
          unselectedItemColor: Colors.grey[500],
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
            color: Color(0xFF82B1FF),
            letterSpacing: 1.5,
          ),
          titleLarge: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Color(0xFF90CAF9),
          ),
          bodyMedium: TextStyle(
            fontSize: 18,
            color: Color(0xFFBBDEFB),
          ),
          bodySmall: TextStyle(
            fontSize: 14,
            color: Color(0xFFB0BEC5),
          ),
        ),
        cardColor: const Color(0xFF10243E),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF1565C0),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 1.1,
            ),
          ),
        ),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => Esqueleto(),
        "/detalhes": (context) => Detalhes(),
        "/detalhesdois": (context) => Detalhesdois(),
      },
    );
  }
}
