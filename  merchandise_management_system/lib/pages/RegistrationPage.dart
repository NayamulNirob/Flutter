import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:date_field/date_field.dart';
import 'package:http/http.dart' as http;
import 'package:merchandise_management_system/pages/LogInPage.dart';

import 'dart:io';
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:radio_group_v2/radio_group_v2.dart';
import 'package:flutter/foundation.dart' show Uint8List, kIsWeb;


class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});


  @override
  State<RegistrationPage> createState() => _RegistrationPageState();


}

class _RegistrationPageState extends State<RegistrationPage> {

  final TextEditingController name = TextEditingController();

  final TextEditingController email = TextEditingController();

  final TextEditingController password = TextEditingController();

  final TextEditingController confirmPassword = TextEditingController();

  final TextEditingController cell = TextEditingController();

  final TextEditingController address = TextEditingController();

  // final DateTimeFieldPickerPlatform dob= DateTimeFieldPickerPlatform.material;

  final TextEditingController dob = TextEditingController()
    ..text = DateFormat('yyyy-MM-dd').format(DateTime.now());

  final RadioGroupController genderController = RadioGroupController();

  String? selectedGender;

  DateTime? selectedDate;

  final _formKey = GlobalKey<FormState>();

  File? selectedImage;
  final ImagePicker _picker = ImagePicker();

  Future<void> pickImage() async {
    final XFile? pickedImage =
    await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        selectedImage = File(pickedImage.path);
      });
    }
  }

  Future<void> submitRegistration() async {
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

    if (selectedImage != null) {
      if (!kIsWeb && Platform.isAndroid || Platform.isIOS) {
        // For web, read the image as bytes and send it directly.
        Uint8List imageBytes = await selectedImage!.readAsBytes();
        request.files.add(
          http.MultipartFile.fromBytes(
            'avatar',
            imageBytes,
            filename: 'avatar.png',
            contentType: MediaType('image', 'png'),
          ),
        );
      } else {
        // For mobile, use fromPath.
        request.files.add(
          await http.MultipartFile.fromPath(
            'avatar',
            selectedImage!.path,
            contentType: MediaType('image', 'png'),
          ),
        );
      }
    }


    try {
      var response = await request.send();
      if (response.statusCode == 200) {
        print('Registration successful');
      } else {
        print('Failed to register. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error occurred while submitting: $e');
    }
  }


  // Method to validate form and check passwords
  // void _register() async {
  //
  //   if (_formKey.currentState!.validate()) {
  //     String uName = name.text;
  //     String uEmail = email.text;
  //     String uPassword = password.text;
  //     String uCell = cell.text;
  //     String uAddress = address.text;
  //     String uGender = selectedGender ?? 'Other';
  //     String uDob = selectedDOB != null ? selectedDOB!.toIso8601String() : '';
  //
  //     // Send data to the server
  //     final response = await _sendDataToBackend(uName, uEmail, uPassword, uCell, uAddress, uGender, uDob);
  //
  //     if (response.statusCode == 201 || response.statusCode == 200  ) {
  //       // Registration successful
  //       print('Registration successful!');
  //     } else if (response.statusCode == 409) {
  //       // User already exists
  //       print('User already exists!');
  //     } else {
  //       print('Registration failed with status: ${response.statusCode}');
  //     }
  //   }
  // }

  // HTTP POST Request to send data to backend
  Future<http.Response> _sendDataToBackend(
      String name,
      String email,
      String password,
      String cell,
      String address,
      String gender,
      String dob,
      ) async {

    const String url = 'http://localhost:8089/register'; // Android emulator
    final response = await http.post(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'name': name,
        'email': email,
        'password': password,
        'cell': cell,
        'address': address,
        'gender': gender,
        'dob': dob,
      }),
    );
    return response;
  }


  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Padding(
  //       padding: const EdgeInsets.all(16),
  //       child: SingleChildScrollView(
  //         child: Form(
  //           key: _formKey,
  //           child: Column(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             children: [
  //               const Text(
  //                 'Registration Form', // Your heading text
  //                 style: TextStyle(
  //                   fontSize: 24, // Size of the heading
  //                   fontWeight: FontWeight.bold, // Bold style
  //                   color: Colors.black, // Color of the text
  //                 ),
  //               ),
  //               const SizedBox(height: 20),
  //               TextField(
  //                 controller: name,
  //                 decoration: const InputDecoration(
  //                     labelText: 'Full Name',
  //                     border: OutlineInputBorder(),
  //                     prefixIcon: Icon(Icons.person)),
  //               ),
  //               const SizedBox(
  //                 height: 20,
  //               ),
  //               TextField(
  //                 controller: email,
  //                 decoration: const InputDecoration(
  //                     labelText: 'Email ',
  //                     border: OutlineInputBorder(),
  //                     prefixIcon: Icon(Icons.email)),
  //               ),
  //               const SizedBox(
  //                 height: 20,
  //               ),
  //               TextField(
  //                 controller: password,
  //                 decoration: const InputDecoration(
  //                     labelText: 'Password ',
  //                     border: OutlineInputBorder(),
  //                     prefixIcon: Icon(Icons.lock)
  //                 ),
  //                 obscureText: true,
  //               ),
  //               const SizedBox(
  //                 height: 20,
  //               ),
  //               TextField(
  //                 controller: confirmPassword,
  //                 decoration: const InputDecoration(
  //                     labelText: 'Confirm Password ',
  //                     border: OutlineInputBorder(),
  //                     prefixIcon: Icon(Icons.lock)
  //                 ),
  //                 obscureText: true,
  //               ),
  //               const SizedBox(
  //                 height: 20,
  //               ),
  //               TextField(
  //                 controller: cell,
  //                 decoration: const InputDecoration(
  //                     labelText: 'Cell Number',
  //                     border: OutlineInputBorder(),
  //                     prefixIcon: Icon(Icons.phone)),
  //               ),
  //               const SizedBox(
  //                 height: 20,
  //               ),
  //               TextField(
  //                 controller: address,
  //                 decoration: const InputDecoration(
  //                     labelText: 'Address',
  //                     border: OutlineInputBorder(),
  //                     prefixIcon: Icon(Icons.maps_home_work_rounded)),
  //               ),
  //               const SizedBox(
  //                 height: 20,
  //               ),
  //
  //               DateTimeFormField(
  //                 decoration: const InputDecoration(labelText: 'Date of Birth'),
  //                 mode: DateTimeFieldPickerMode.date,
  //                 pickerPlatform: dob,
  //                 onChanged: (DateTime? value) {
  //                   setState(() {
  //                     selectedDOB = value;
  //                   });
  //                 },
  //               ),
  //
  //               const SizedBox(
  //                 height: 20,
  //               ),
  //
  //               Row(
  //                 children: [
  //                   const Text('Gender:'),
  //                   Expanded(
  //                     child: Row(
  //                       children: [
  //                         Radio<String>(
  //                           value: 'Male',
  //                           groupValue: selectedGender,
  //                           onChanged: (String? value) {
  //                             setState(() {
  //                               selectedGender = value;
  //                             });
  //                           },
  //                         ),
  //                         const Text('Male'),
  //                       ],
  //                     ),
  //                   ),
  //                   Expanded(
  //                     child: Row(
  //                       children: [
  //                         Radio<String>(
  //                           value: 'Female',
  //                           groupValue: selectedGender,
  //                           onChanged: (String? value) {
  //                             setState(() {
  //                               selectedGender = value;
  //                             });
  //                           },
  //                         ),
  //                         const Text('Female'),
  //                       ],
  //                     ),
  //                   ),
  //                   Expanded(
  //                     child: Row(
  //                       children: [
  //                         Radio<String>(
  //                           value: 'Other',
  //                           groupValue: selectedGender,
  //                           onChanged: (String? value) {
  //                             setState((){
  //                               selectedGender = value;
  //                             });
  //                           },
  //                         ),
  //                         const Text('Other'),
  //                       ],
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //               const SizedBox(
  //                 height: 40,
  //               ),
  //               ElevatedButton(
  //                   onPressed: () {
  //                     _register();
  //                     Navigator.push(
  //                         context,
  //                         MaterialPageRoute(builder: (context) => Loginpage()));
  //                   },
  //                   style: ElevatedButton.styleFrom(
  //                     backgroundColor: Colors.blueAccent,
  //                     foregroundColor: Colors.white,
  //                   ),
  //                   child: Text(
  //                     "Registration",
  //                     style: TextStyle(
  //                         fontWeight: FontWeight.w600,
  //                         fontFamily:GoogleFonts.lato().fontFamily
  //                     ),
  //                   )
  //               ),
  //
  //               const SizedBox(height: 20),
  //
  //               // Login Text Button
  //               ElevatedButton(
  //                 onPressed: () {
  //                   Navigator.push(
  //                     context,
  //                     MaterialPageRoute(builder: (context) => Loginpage()),
  //                   );
  //                 },
  //                 child: const Text(
  //                   'Login',
  //                   style: TextStyle(
  //                     color: Colors.blue,
  //                     decoration: TextDecoration.none,
  //                   ),
  //                 ),
  //               )
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
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
            Text("Gender"),
            const SizedBox(
              height: 10,
            ),
            RadioGroup(
              controller: genderController,
              values: ["Male", "Female", "Others"],
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
              icon: Icon(Icons.image),
              label: Text('Pick Avatar'),
              onPressed: pickImage,
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: submitRegistration,
              child: const Text(
                "Registration",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

}