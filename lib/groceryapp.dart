import 'package:flutter/material.dart';

class Groceryapp extends StatelessWidget {
  const Groceryapp({super.key});

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello Everyone',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(height: 20),
            Text(
              'Complete your grocery need easily',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text('Get Started'),
              style: ElevatedButton.styleFrom(foregroundColor: Colors.green, backgroundColor: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Balance',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '\$1,700.00',
              style: TextStyle(fontSize: 24, color: Colors.green, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Buy Orange 10 Kg\nGet discount 25%'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: Size(double.infinity, 60),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'For you',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryButton(icon: Icons.apple, label: 'Fruit'),
                CategoryButton(icon: Icons.local_florist, label: 'Vegetable'),
                CategoryButton(icon: Icons.cookie, label: 'Cookies'),
                CategoryButton(icon: Icons.fastfood, label: 'Meat'),
              ],
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ItemsPage()),
                );
              },
              child: Text('Go to Products List'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final IconData icon;
  final String label;

  CategoryButton({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 40, color: Colors.green),
        SizedBox(height: 5),
        Text(label),
      ],
    );
  }
}

class ItemsPage extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {'name': 'Orange', 'price': 10},
    {'name': 'Apple', 'price': 20},
    {'name': 'Banana', 'price': 5},
    {'name': 'Mango', 'price': 15},
    {'name': 'Grapes', 'price': 8},
    {'name': 'Strawberry', 'price': 12},
    {'name': 'Watermelon', 'price': 7},
  ];

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello Everyone',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(height: 20),
            Text(
              'Complete your grocery need easily',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text('Get Started'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white, iconColor: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}