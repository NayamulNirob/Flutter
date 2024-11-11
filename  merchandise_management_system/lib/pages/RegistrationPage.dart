import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:merchandise_management_system/pages/LogInPage.dart';
import 'package:radio_group_v2/radio_group_v2.dart';
import 'package:flutter/foundation.dart' show Uint8List, kIsWeb;


class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});


  @override
  State<RegistrationPage> createState() => _RegistrationPageState();


}

class _RegistrationPageState extends State<RegistrationPage> {

  final TextEditingController name = TextEditingController()..text='Test';

  final TextEditingController email = TextEditingController()..text='test@test.test';

  final TextEditingController password = TextEditingController()..text='123456';

  final TextEditingController confirmPassword = TextEditingController()..text='123456';

  final TextEditingController cell = TextEditingController()..text='123456';

  final TextEditingController address = TextEditingController()..text='Dhaka, bangladesg';

  final TextEditingController dob = TextEditingController()
    ..text = DateFormat('yyyy-MM-dd').format(DateTime.now());

  final RadioGroupController genderController = RadioGroupController();

  String? selectedGender;

  DateTime? selectedDate;



  XFile? selectedImage;
  final ImagePicker _picker = ImagePicker();

  Future<void> pickImage() async {
    final XFile? pickedImage =
    await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        selectedImage = XFile(pickedImage.path);
      });
    }
  }

  Future<bool> submitRegistration() async {
    final user = {
      'gender': genderController.value,
      'name': name.text,
      'email': email.text,
      'password': password.text,
      'cell': cell.text,
      'address': address.text,
      'dob': dob.text,
    };

    var uri = Uri.parse('http://localhost:8089/register');
    var request = http.MultipartRequest('POST', uri);


    request.files.add(
      http.MultipartFile.fromString(
        'user',
        jsonEncode(user),
        contentType: MediaType('application', 'json'),
      ),
    );

    // if (selectedImage != null) {
    //   if (kIsWeb) {
    //     // For web, read the image as bytes and send it directly.
    //     Uint8List imageBytes = await selectedImage!.readAsBytes();
    //     request.files.add(
    //       http.MultipartFile.fromBytes(
    //         'avatar',
    //         imageBytes,
    //         filename: 'avatar.png',
    //         contentType: MediaType('image', 'png'),
    //       ),
    //     );
    //   } else {
    //     // For mobile, use fromPath.
    //     request.files.add(
    //       await http.MultipartFile.fromPath(
    //         'avatar',
    //         selectedImage!.path,
    //         contentType: MediaType('image', 'png'),
    //       ),
    //     );
    //   }
    // }

    if (selectedImage != null) {
      if (kIsWeb) {
        // For web, read the image as bytes and send it directly.
        request.files.add(
          http.MultipartFile.fromString(
            'user',
            jsonEncode(user),
            contentType: MediaType('application', 'json'),
          ),
        );
      } else {
        // For mobile, use fromPath.
        request.files.add(
          await http.MultipartFile.fromPath(
            'test',
            selectedImage!.path
          ),
        );
      }
    }



    try {
      var response = await request.send();
      if (response.statusCode == 200) {
        print('Registration successful');
        return true;
      } else {
        print('Failed to register. Status code: ${response.statusCode}');
        return false;
      }
    } catch (e) {
      print('Error occurred while submitting: $e');
      return false;
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                "Registration",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: name,
              decoration: const InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(),
                icon: Icon(Icons.person),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: email,
              decoration: const InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
                icon: Icon(Icons.email),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: password,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
                icon: Icon(Icons.password),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: confirmPassword,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Confirm Password",
                border: OutlineInputBorder(),
                icon: Icon(Icons.password),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: cell,
              decoration: const InputDecoration(
                labelText: "Cell Number",
                border: OutlineInputBorder(),
                icon: Icon(Icons.phone),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: address,
              decoration: const InputDecoration(
                labelText: "Address",
                border: OutlineInputBorder(),
                icon: Icon(Icons.location_city),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              onTap: () async {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: selectedDate ?? DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2101),
                );
                if (picked != null && picked != selectedDate) {
                  setState(() {
                    selectedDate = picked;
                    String formattedDate =
                    DateFormat('yyyy-MM-dd').format(selectedDate!);
                    dob.text = formattedDate;
                  });
                }
              },
              controller: dob,
              decoration: const InputDecoration(
                labelText: "Date of Birth",
                border: OutlineInputBorder(),
                icon: Icon(Icons.calendar_today),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Gender"),
            const SizedBox(
              height: 10,
            ),
            RadioGroup(
              controller: genderController,
              values: const ["Male", "Female", "Others"],
              indexOfDefault: 0,
              orientation: RadioGroupOrientation.horizontal,
              decoration: RadioGroupDecoration(
                spacing: 10.0,
                labelStyle: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
                activeColor: Colors.blue,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.image),
              label: const Text('Pick Avatar'),
              onPressed: pickImage,
            ),
            const SizedBox(
              height: 10,
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: () async {
                bool isRegistered = await submitRegistration();
                if (isRegistered) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Loginpage()),
                  );
                } else {
                  // Show an error message or handle unsuccessful registration as needed.
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Registration failed. Please try again.')),
                  );
                }
              },
              child: const Text(
                'Registration',
                style: TextStyle(
                  color: Colors.white,
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