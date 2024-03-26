import 'package:chat_app/common/widgets/error.dart';
import 'package:chat_app/features/auth/screens/login_screen.dart';
import 'package:chat_app/features/auth/screens/otp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../features/chat/screens/mobile_chat_lists_screen.dart';
import '../../features/chat/screens/mobile_chat_screen.dart';


Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
    case OtpScreen.routeName:
      final verificationId = routeSettings.arguments as String;
      return MaterialPageRoute(
        builder: (context) => OtpScreen(verificationId: verificationId),
      );
    case MobileChatScreen.routeName:
      return MaterialPageRoute(builder: (context) => const MobileChatScreen());
    case MobileChatListScreen.routeName:
      return MaterialPageRoute(builder: (context) => const MobileChatListScreen());
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: ErrorScreen(errorMessage: 'This page isn\'t available'),
        ),
      );
  }
}
