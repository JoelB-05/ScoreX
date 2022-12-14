import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:score_x/screens/login_screen.dart';
import 'package:score_x/screens/register_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegisterScreen(),
    );
  }
}