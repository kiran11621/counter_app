import 'package:counter_app/counter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  return runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Counter App",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF2C3E50),
          title: Text(
            "Counter App",
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF192A51),
                Color(0xFF000000)
              ], // Example gradient colors for background layer
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const CounterPage(),
        ),
      ),
    );
  }
}
