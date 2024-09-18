import 'package:app/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              selectedIconTheme: const IconThemeData(
                color: Color(0xFF703EDB),
                shadows: const [
                  BoxShadow(
                    color: Color(0x7F9868FD),
                    blurRadius: 23.50,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              unselectedIconTheme: const IconThemeData(
                color: Color(0xFF2A174E),
              )),
          textSelectionTheme: const TextSelectionThemeData(
            cursorColor: Color(0xFF2A174E),
          ),
          fontFamily: 'Poppins',
          iconTheme: const IconThemeData(
            color: Color(0xFF2A174E),
          )),
      home: const HomePage(),
    );
  }
}
