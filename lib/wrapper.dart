import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stride_assignment/helpers/firebase_auth_helper.dart';
import 'package:stride_assignment/views/home/home_view.dart';
import 'package:stride_assignment/views/sign_in_view.dart';
import 'package:stride_assignment/views/splash_view.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return StreamBuilder<User?>(
      stream: FirebaseAuthHelper.userChangeStream,
      builder: (context, snapshot) {

        if(snapshot.connectionState == ConnectionState.active) {
          if(snapshot.hasData && snapshot.data != null) {
            return const HomeView();
          }
          else {
            return const SignInView();
          }
        }
        else {
          return const SplashView();
        }

      },
    );
  }

}
