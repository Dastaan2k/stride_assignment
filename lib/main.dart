import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:stride_assignment/wrapper.dart';

import 'helpers/fcm_helper.dart';



void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await  FCMHelper.configure();
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stride Assignment',
      theme: ThemeData(fontFamily: GoogleFonts.poppins().fontFamily),
      home: const Wrapper()
    );
  }
}
