import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 6, 113, 200),
        leading: Container(
          margin: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 4, 107, 191),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              // Handle sidebar navigation here
            },
          ),
        ),
        actions: [
          SizedBox(width: 8.0),
          Container(
            margin: EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(Icons.login),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(Icons.person_add),
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                // Handle cart button tap
              },
            ),
          ),
        ],
        title: Text("Joy's store"),
      ),
      body: Container(
        color: const Color.fromARGB(255, 200, 220, 255), // Faint blue background
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Welcome to Joy's Cosmetic Store!",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.yellow, // Adjust the color as needed
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.all(15),
                child: Text(
                  "🎉 Limited-time Offer: Free Shipping on Orders Over \$50! 🚚",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Container(
                  width: 300,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Container(
                  width: 300,
                  child: Text(
                    "Joy's Cosmetics",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: 300,
                  child: Text(
                    "Beauty Redefined",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 30),
                  Text(
                    "Category",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoryItem(
                    icon: Icons.local_pharmacy,
                    name: "Lotions",
                  ),
                  CategoryItem(
                    icon: Icons.loyalty,
                    name: "Perfumes",
                  ),
                  CategoryItem(
                    icon: Icons.hot_tub,
                    name: "Shower Gels",
                  ),
                  CategoryItem(
                    icon: Icons.face,
                    name: "Makeup",
                  ),
                  CategoryItem(
                    icon: Icons.brush,
                    name: "Nail Polish",
                  ),
                ],
              ),
              SizedBox(height: 50),
              Text(
                "Your Choice",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40), // Increased space around "Your Choice" section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ChoiceItem(
                    image: AssetImage('assets/images/natural.png'),
                    name: "Natural Products",
                    description: "Explore our natural products",
                  ),
                  ChoiceItem(
                    image: AssetImage('assets/images/cream.png'),
                    name: "Lightening Products",
                    description: "Discover our lightening products",
                  ),
                ],
              ),
              SizedBox(height: 40),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Trending Products",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  TrendingProductItem(
                    image: AssetImage('assets/images/perfume1.jpg'),
                    name: "Queen",
                    description: "Ugx 35,000 - A fragrance fit for royalty.",
                  ),
                  SizedBox(height: 10), // Reduced space between TrendingProductItems
                  TrendingProductItem(
                    image: AssetImage('assets/images/perfume2.jpg'),
                    name: "Blue berry",
                    description: "Ugx 40,000 - Sweet and refreshing.",
                  ),
                  SizedBox(height: 10),
                  TrendingProductItem(
                    image: AssetImage('assets/images/nail_polish2.jpg'),
                    name: "Serry",
                    description: "Ugx 18,000 - Vibrant nail colors.",
                  ),
                  SizedBox(height: 10),
                  TrendingProductItem(
                    image: AssetImage('assets/images/nail_polish3.jpg'),
                    name: "Nekes",
                    description: "Ugx 30,000 - Express yourself with unique nail shades.",
                  ),
                  SizedBox(height: 10),
                  TrendingProductItem(
                    image: AssetImage('assets/images/makeup3.jpg'),
                    name: "Maiden",
                    description: "Ugx 25,000 - Makeup that enhances your natural beauty.",
                  ),
                  SizedBox(height: 10),
                  TrendingProductItem(
                    image: AssetImage('assets/images/makeup5.jpg'),
                    name: "Harsh",
                    description: "Ugx 40,000 - Bold and captivating makeup choices.",
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                color: Colors.blue, // Blue footer
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FooterItem(
                      icon: Icons.home,
                      label: "Home",
                      onTap: () {
                        // Handle home link tap
                      },
                    ),
                    FooterItem(
                      icon: Icons.category,
                      label: "Products",
                      onTap: () {
                        // Navigate to Products page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductsPage(),
                          ),
                        );
                      },
                    ),
                    FooterItem(
                      icon: Icons.trending_up,
                      label: "Trending",
                      onTap: () {
                        // Handle trending link tap
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Text("Login Page"),
      ),
    );
  }
}

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Center(
        child: Text("Sign Up Page"),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String name;

  CategoryItem({required this.icon, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.2), // Faint blue background
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              icon,
              size: 40,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(name),
      ],
    );
  }
}

class ChoiceItem extends StatelessWidget {
  final ImageProvider<Object> image;
  final String name;
  final String description;

  ChoiceItem({
    required this.image,
    required this.name,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: image,
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5),
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            description,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class TrendingProductItem extends StatelessWidget {
  final ImageProvider<Object> image;
  final String name;
  final String description;

  TrendingProductItem({
    required this.image,
    required this.name,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  image: image,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    description,
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FooterItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  FooterItem({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Icon(icon, color: Colors.white),
          SizedBox(height: 2),
          Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: Center(
        child: Text("Products Page"),
      ),
    );
  }
}
