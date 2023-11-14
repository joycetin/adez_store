import 'package:flutter/material.dart';
import 'package:joyz_cosmetic_store/onboarding_screen.dart';
import 'package:joyz_cosmetic_store/home.dart' as HomePageAlias;

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/lady.png',
                width: 400,
                height: 400,
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  bool onboardingRequired = true;

                  if (onboardingRequired) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OnboardingScreen(),
                      ),
                    );
                  } else {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePageAlias.HomePage(),
                      ),
                    );
                  }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white), // Set the background color to white
                ),
                child: Text(
                  "Get Started",
                  style: TextStyle(color: Colors.black), // Set the text color to black
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
