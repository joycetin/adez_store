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
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/images/me.png'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
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
              SizedBox(height: 20),
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
              SizedBox(height: 20),
              Text(
                "Your Choice",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ChoiceItem(
                    image: AssetImage('assets/images/natural.png'),
                    name: "Natural Products",
                    description: "Explore our natural products",
                  ),
                  ChoiceItem(
                    image: AssetImage('assets/images/light.jpg'),
                    name: "Lightening Products",
                    description: "Discover our lightening products",
                  ),
                ],
              ),
              SizedBox(height: 20),
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
                  for (int i = 1; i <= 30; i += 3)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TrendingProductItem(
                          image: AssetImage('assets/images/perfume1.jpg'),
                          name: "Black Scent",
                          description: "Description for Black Scent",
                        ),
                        TrendingProductItem(
                          image: AssetImage('assets/images/perfume1.jpg'),
                          name: "Black Scent",
                          description: "Description for Black Scent",
                        ),
                        TrendingProductItem(
                          image: AssetImage('assets/images/perfume1.jpg'),
                          name: "Black Scent",
                          description: "Description for Black Scent",
                        ),
                      ],
                    ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                color: Colors.white, // White footer
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
            shape: BoxShape.circle,
            color: Color.fromARGB(255, 4, 103, 184),
          ),
          padding: EdgeInsets.all(12),
          child: Icon(icon, size: 30, color: Colors.white),
        ),
        SizedBox(height: 5),
        Text(
          name,
          style: TextStyle(
            fontSize: 8,
            color: const Color.fromARGB(255, 90, 90, 90),
          ),
        ),
      ],
    );
  }
}

class ChoiceItem extends StatelessWidget {
  final AssetImage image;
  final String name;
  final String description;

  ChoiceItem({
    required this.image,
    required this.name,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(255, 10, 126, 220),
          ),
          padding: EdgeInsets.all(12),
          child: CircleAvatar(
            radius: 50,
            backgroundImage: image,
          ),
        ),
        SizedBox(height: 10),
        Text(
          name,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5),
        Text(
          description,
          style: TextStyle(
            fontSize: 8,
          ),
        ),
      ],
    );
  }
}

class TrendingProductItem extends StatelessWidget {
  final AssetImage image;
  final String name;
  final String description;

  TrendingProductItem({
    required this.image,
    required this.name,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 280,
          height: 280,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          padding: EdgeInsets.all(12),
          child: CircleAvatar(
            radius: 100,
            backgroundImage: image,
          ),
        ),
        SizedBox(height: 20),
        Text(
          name,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5),
        Text(
          description,
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            // Handle "Add to Cart" button press
          },
          child: Text("Add to Cart"),
        ),
      ],
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
          Icon(icon, size: 30, color: Colors.black), // Black icons
          SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(fontSize: 12, color: Colors.black), // Black text
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            // Display 30 images in 3 rows with 3 images in each row
            for (int i = 1; i <= 30; i += 3)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProductItem(
                    image: AssetImage('assets/images/perfume1.jpg'),
                    name: "Black Scent",
                  ),
                  ProductItem(
                    image: AssetImage('assets/images/perfume1.jpg'),
                    name: "Black Scent",
                  ),
                  ProductItem(
                    image: AssetImage('assets/images/perfume1.jpg'),
                    name: "Black Scent",
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final AssetImage image;
  final String name;

  ProductItem({required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          padding: EdgeInsets.all(12),
          child: CircleAvatar(
            radius: 70,
            backgroundImage: image,
          ),
        ),
        SizedBox(height: 20),
        Text(
          name,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Handle "Add to Cart" button press
          },
          child: Text("Add to Cart"),
        ),
      ],
    );
  }
}
