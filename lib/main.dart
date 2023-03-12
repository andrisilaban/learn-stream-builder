import 'package:google_fonts/google_fonts.dart';
import 'package:learn_stream_builder/state_util.dart';
import 'package:flutter/material.dart';
import 'package:learn_stream_builder/view/change_notofier_provider/home_change_notifier_provider.dart';

void main() {
  runApp(const MyApp());
}

//option+ctrl+shift+b json to model hiratha shortcut
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Belajar Sampai Keren',
      navigatorKey: Get.navigatorKey,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blueAccent,
          titleTextStyle: TextStyle(fontSize: 18),
        ),
        primarySwatch: Colors.blue,
        useMaterial3: true,
        // fontFamily: GoogleFonts.abel().fontFamily,
        textTheme: TextTheme(
          bodySmall: TextStyle(
            fontFamily: GoogleFonts.poppins().fontFamily,
            color: Colors.blueAccent,
          ),
          bodyMedium: TextStyle(
            fontFamily: GoogleFonts.poppins().fontFamily,
            fontSize: 18,
            color: Colors.blueAccent,
          ),
        ),
        iconButtonTheme: const IconButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStatePropertyAll<Color>(Colors.white),
            iconSize: MaterialStatePropertyAll<double>(20),
            splashFactory: InkRipple.splashFactory,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            backgroundColor: Colors.blue[50]!,
            foregroundColor: Colors.blue,
            textStyle: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ),
        textButtonTheme: const TextButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStatePropertyAll<TextStyle>(
              TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                wordSpacing: 3.4,
              ),
            ),
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.white,
          foregroundColor: Colors.blueAccent,
          iconSize: 40,
          splashColor: Colors.green.shade50,
        ),
      ),
      home: const HomeChangeNotifierProvider(),
    );
  }
}
