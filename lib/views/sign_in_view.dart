import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stride_assignment/core/constants.dart';
import 'package:stride_assignment/helpers/firebase_auth_helper.dart';

class SignInView extends StatefulWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {

  bool showLoading = false;

  @override
  Widget build(BuildContext context) {

    return Material(
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Sarvesh Dalvi'),
                  const SizedBox(height: StrideConstants.defaultSpacing),
                  ElevatedButton(onPressed: () async {await signInCallback();}, child: const Text('Google Sign in')),
                ],
              ),
            ),
            showLoading == true ? const ModalBarrier() : const SizedBox()
          ],
        )
    );
  }

  signInCallback() async {
    try {
      UserCredential? user = await FirebaseAuthHelper.googleSignIn();
      if(user.user == null) {
        Fluttertoast.showToast(msg: 'Something went wrong');
      }
      else {
        setState(() {showLoading = true;});
      }
    }
    catch(e) {
      Fluttertoast.showToast(msg: 'Something went wrong');
    }
  }

}

class ModalBarrier extends StatelessWidget {
  const ModalBarrier({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.black.withOpacity(0.6),
      child: const Center(child: CircularProgressIndicator()),
    );
  }
}

