import 'package:flutter/material.dart';
import 'package:joyz_cosmetic_store/home.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _pageController = PageController(initialPage: 0);

  final List<OnboardingItem> onboardingItems = [
    OnboardingItem(
      title: 'Soothing lotions',
      description: 'Always here to bring your skin to your standards',
      image: 'assets/images/lotion3.png',
    ),
    OnboardingItem(
      title: 'Quality Perfumes',
      description: 'Attract everyone around you with our beautiful scents',
      image: 'assets/images/perfume4.jpg',
    ),
    OnboardingItem(
      title: 'Shower Purifier',
      description: 'Enjoy a fresh baths with our shower gels',
      image: 'assets/images/showergel3.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        itemCount: onboardingItems.length,
        itemBuilder: (context, index) {
          return OnboardingPage(
            item: onboardingItems[index],
            onDone: () {
              if (index == onboardingItems.length - 1) {
                // Handle what to do when onboarding is done
                // Navigate to the main part of the app (ActualScreen in this case)
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
              } else {
                // Move to the next onboarding screen
                _pageController.nextPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              }
            },
          );
        },
      ),
    );
  }
}

class OnboardingItem {
  final String title;
  final String description;
  final String image;

  OnboardingItem({
    required this.title,
    required this.description,
    required this.image,
  });
}

class OnboardingPage extends StatelessWidget {
  final OnboardingItem item;
  final VoidCallback onDone;

  OnboardingPage({required this.item, required this.onDone});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 200, // Adjust the size as needed
          height: 200, // Adjust the size as needed
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(item.image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 20),
        Text(
          item.title,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          item.description,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: onDone,
          child: Text('Next'),
        ),
      ],
    );
  }
}
