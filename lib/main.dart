import 'package:booksapp/costants.dart';
import 'package:booksapp/features/splash/presentaion/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooksApp());
}

class BooksApp extends StatelessWidget {
  const BooksApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor
      ,textTheme:GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme) ),
      
    );
   
  }
}


// #EA8F79  pink
// #FFFFFF
// #EAEAEA grey 
// #273238  dark