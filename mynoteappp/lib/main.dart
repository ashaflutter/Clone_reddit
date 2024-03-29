
import 'package:firebase_auth/firebase_auth.dart';
import 'Screens/login_screen.dart';
import 'package:flutter/material.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  var Firebase;
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends  StatelessWidget {

  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyNoteApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(
              fontSize: 24.0,
            ),
            padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
          ),
        ),
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 46.0,
            color: Colors.blue.shade700,
            fontWeight: FontWeight.w500,
          ),
          bodyText1: const TextStyle(fontSize: 18.0),

        ),
      ),
      home: LoginScreen(),
    );
  }
}

