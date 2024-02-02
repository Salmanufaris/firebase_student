// ignore_for_file: use_key_in_widget_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_todo/controller/add_edit_provider.dart';
import 'package:flutter_application_todo/controller/student_provider.dart';
import 'package:flutter_application_todo/controller/widget_provider.dart';
import 'package:flutter_application_todo/service/firebase_options.dart';
import 'package:flutter_application_todo/views/home_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: 'AIzaSyA5qWXjSpXeNNxpayIczcQ_z0IdBR6NSik',
    appId: '1:685922802983:android:40598470546f173d6a9d02',
    messagingSenderId: '685922802983',
    projectId: 'todo-755f1',
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => DonorProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => WidgetsProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => AddEditProvider(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
