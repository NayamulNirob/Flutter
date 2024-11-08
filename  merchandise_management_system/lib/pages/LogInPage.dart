import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:merchandise_management_system/pages/AddProduct.dart';
import 'package:merchandise_management_system/pages/ProductViewPage.dart';
import 'package:merchandise_management_system/pages/RegistrationPage.dart';
import 'package:merchandise_management_system/pages/all_product_view_page.dart';
import 'package:merchandise_management_system/services/AuthService.dart';


class Loginpage extends StatelessWidget {


  final TextEditingController email=TextEditingController();
  final TextEditingController password =TextEditingController();

  final store =const FlutterSecureStorage();
  AuthService authService = AuthService();

  Loginpage({super.key});

  Future<void>loginUser(BuildContext context)async{

    try{
      final response =await authService.login(email.text, password.text);

      final role = await authService.getUserRole();

     print(role);
      // if(role== 'ADMIN'){
      //   Navigator.pushReplacement(
      //     context,
      //     MaterialPageRoute(builder: (context)=>AdminPage()),
      //   );
      // }else if(role=='USER'){
      //   Navigator.pushReplacement(
      //     context,
      //     MaterialPageRoute(builder: (context)=>UserPage()),
      //   );
      // }else {
      //   print('Unknown role: $role');
      // }

    }catch (error) {
      print('Login failed: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: email,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email)
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: password,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.password)
              ),
              obscureText: true,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){
              String em = email.text;
              String pass =password.text;
              print('Email: $em, Password $pass');
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddProductPage()));
            },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white
              ),
              child: Text(
              "Login",
               style: TextStyle(
                 fontWeight: FontWeight.w600,
                 fontFamily: GoogleFonts.lato().fontFamily
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
                  MaterialPageRoute(builder: (context) => const RegistrationPage()),
                );
              },
              child: const Text(
                'Registration',
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
                  MaterialPageRoute(builder: (context) => const AddProductPage()),
                );
              },
              child: const Text(
                'Add Product',
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
                  MaterialPageRoute(builder: (context) => const AllProductViewPage()),
                );
              },
              child: const Text(
                'View Product',
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
                  MaterialPageRoute(builder: (context) => ProductViewPage(productId: 9)),
                );
              },
              child: const Text(
                'View Product',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.none,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
