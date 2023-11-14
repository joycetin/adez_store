import 'package:flutter/material.dart';

class ActualScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Actual Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the Actual Screen!',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                // You can add your main screen content and navigation here.
              },
              child: Text('Actual Screen Button'),
            ),
          ],
        ),
      ),
    );
  }
}
