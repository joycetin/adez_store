import 'package:flutter/material.dart';
import 'products.dart'; // Import the ProductsPage
import 'signup_page.dart'; // Import the SignUpPage

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 146, 192, 229).withOpacity(0.2), // Faint blue background
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 153, 199, 236).withOpacity(0.2), // Faint blue background
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // TODO: Implement login logic
                  // For now, navigate to the Products page on button press
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductsPage(),
                    ),
                  );
                },
                child: Text("Login"),
              ),
              SizedBox(height: 8),
              TextButton(
                onPressed: () {
                  // Navigate to Sign Up page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpPage(),
                    ),
                  );
                },
                child: Text("Don't have an account? Sign Up"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
