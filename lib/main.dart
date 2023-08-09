import 'package:chat_app/core/routing/router.dart';
import 'package:chat_app/features/landings/screens/landing_screen.dart';
import 'package:chat_app/firebase_options.dart';
import 'package:chat_app/screens/mobile_layout_screen.dart';
import 'package:chat_app/screens/web_layout_screen.dart';
import 'package:chat_app/utils/app_colors.dart';
import 'package:chat_app/utils/responsive_layout.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat me',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.lightGray3,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.appBarColor,
        ),
      ),
      home: const LandingScreen(),
      onGenerateRoute: (settings) {
        return generateRoute(settings);
      },
      // const ResponsiveLayout(
      //   mobileScreenLayout: MobileLayoutScreen(),
      //   webScreenLayout: WebLayoutScreen(),
      // ),
    );
  }
}
