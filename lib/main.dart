import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:notes/screens/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String storageBucketUrl = 'gs://notes-6142f.appspot.com';
  Platform.isAndroid
      ? await Firebase.initializeApp(
    options:FirebaseOptions(
      apiKey: 'AIzaSyCW_YgHHyr-ogeNFiEmHsD5ArCtjLY9gEk',
      appId: '1:24016526072:android:23d1e88ba9d435cfc2f90d',
      messagingSenderId: '24016526072',
      projectId: 'notes-6142f',
      storageBucket: storageBucketUrl,
    ),)
      : await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}


