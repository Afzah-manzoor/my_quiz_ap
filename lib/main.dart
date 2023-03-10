import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_quiz_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:my_quiz_app/helper/config.dart';
import 'package:my_quiz_app/routes.dart';
import 'package:my_quiz_app/screens/splash/splash_screen.dart';
import 'package:my_quiz_app/theme.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  await Firebase.initializeApp();

  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: kPrimaryColor));
// Open your boxes. Optional: Give it a type.
  Directory documentsDirectory = await getApplicationDocumentsDirectory();
  Hive.init(documentsDirectory.path);
  box = await Hive.openBox('myBox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
