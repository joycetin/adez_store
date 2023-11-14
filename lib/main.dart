import 'package:flutter/material.dart';
import 'splash_screen.dart'; // Import the SplashScreen widget
import 'signup_page.dart'; // Import the SignUpPage widget
import 'login_page.dart'; // Import the LoginPage widget

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ade's Cosmetic Ecommerce Shop",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/', // Set the initial route
      routes: {
        '/': (context) => SplashScreen(), // Splash Screen as the initial route
        '/signup': (context) => SignUpPage(), // SignUpPage route
        '/login': (context) => LoginPage(), // LoginPage route
      },
    );
  }
}
