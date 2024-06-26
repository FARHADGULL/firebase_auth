import 'package:firebase_auth/firebase_options.dart';
import 'package:firebase_auth/helpers/app_routes.dart';
import 'package:firebase_auth/helpers/theme_helper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/login_view.dart';

Future main() async {
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
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Firebase Auth',
      theme: ThemeHelper.lightTheme,
      //darkTheme: ThemeHelper.darkTheme,
      home: LoginView(), // Added this line to set the initial route
      getPages: AppRoutes()
          .getRoutes(), // Added this line to register routes in the app
    );
  }
}
