import 'package:chat_app/common/utils/show_snack_bar.dart';
import 'package:chat_app/features/auth/screens/otp_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRepositoryProvider = Provider(
  (ref) => AuthRepository(
    firebaseAuth: FirebaseAuth.instance,
    fireStore: FirebaseFirestore.instance,
  ),
);

class AuthRepository {
  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore fireStore;

  AuthRepository({required this.firebaseAuth, required this.fireStore});

  void signInWithPhone(BuildContext context, String phoneNumber) async {
    try {
      print('try here');
      await firebaseAuth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (phoneAuthCredential) async {
          print('verificationCompleteddddd');
          await firebaseAuth.signInWithCredential(phoneAuthCredential);
        },
        verificationFailed: (error) {
          print('verificationFaileddddd');
          throw Exception(error.message!);
        },
        codeSent: (verificationId, forceResendingToken) {
          print('codeSenttttt');
          Navigator.pushNamed(
            context,
            OtpScreen.routeName,
            arguments: verificationId,
          );
        },
        codeAutoRetrievalTimeout: (verificationId) {
          print('time out verification code');
        },
      );
    } on FirebaseAuthException catch (e) {
      print('FirebaseAuthException');
      showSnackBar(context: context, content: e.message!);
    }
  }
}
