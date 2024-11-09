import 'package:flutter/material.dart';
import 'package:merchandise_management_system/pages/AddProduct.dart';
import 'package:merchandise_management_system/pages/LogInPage.dart';
import 'package:merchandise_management_system/pages/all_product_view_page.dart';


import 'countries_view_page.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Dashboard'),
        automaticallyImplyLeading: false, // Hides the back button
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Welcome, Admin!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              icon: Icon(Icons.people),
              label: Text('View Users'),
              onPressed: () {
                // Navigate to users page or call an API to fetch users
                print("View Users clicked");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(
              icon: Icon(Icons.production_quantity_limits_rounded),
              label: Text('Manage Products'),
              onPressed: () {
                // Navigate to manage hotels page or call an API to manage hotels
                print("Manage Hotels clicked");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 10),


            ElevatedButton.icon(
              icon: Icon(Icons.add),
              label: Text('Add Products'),
              onPressed: () {
                // Implement logout functionality or navigate back to login
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => AddProductPage()),
                ); // Example logout: navigate back to login
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 10),


            ElevatedButton.icon(
              icon: Icon(Icons.settings),
              label: Text('Settings'),
              onPressed: () {
                // Navigate to settings page
                print("Settings clicked");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AllProductViewPage()),
                );
              },
              child: const Text(
                'View all Product',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.none,
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CountriesViewPage()),
                );
              },
              child: const Text(
                'Country View Page',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement logout functionality or navigate back to login
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Loginpage()),
                ); // Example logout: navigate back to login
              },
              child: Text('Logout'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
