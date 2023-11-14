import 'package:flutter/material.dart';
import 'products.dart'; // Import the ProductsPage

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Signup',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              width: 250.0,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 152, 202, 242).withOpacity(0.2),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              width: 250.0,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 150, 202, 245).withOpacity(0.2),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              width: 250.0,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 119, 186, 241).withOpacity(0.2),
                ),
              ),
            ),
            SizedBox(height: 24.0),
            Container(
              width: 250.0,
              child: ElevatedButton(
                onPressed: () {
                  // Implement signup logic here

                  // Navigate to Products page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductsPage(),
                    ),
                  );
                },
                child: Text('Sign Up'),
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account? "),
                GestureDetector(
                  onTap: () {
                    // Navigate to Login page
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 40, 147, 235),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
