import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:date_field/date_field.dart';

class Registrationpage extends StatefulWidget {




  @override
  State<Registrationpage> createState() => _RegistrationpageState();
}

class _RegistrationpageState extends State<Registrationpage> {

  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirPassword = TextEditingController();
  final TextEditingController cell = TextEditingController();
  final TextEditingController address = TextEditingController();
  final DateTimeFieldPickerPlatform dob = DateTimeFieldPickerPlatform.material;
  String? selectedGender;

  final _fromKey = GlobalKey<FormState>();

  void _register() {
    if (_fromKey.currentState!.validate()) {
      String uname = name.text;
      String uemail = email.text;
      String pass = password.text;
      String phn = cell.text;


      print('Name: $uname, \nEmail: $uemail, \nPassword: $pass, \nCell: $phn,');
    }
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(16.0, 32.0, 16.0, 32.0),
        child: SingleChildScrollView(
          child: Form(
            key: _fromKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    controller: name,
                    decoration: const InputDecoration(
                        labelText: 'Full Name',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: email,
                    decoration: const InputDecoration(
                        labelText: 'Email ',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: password,
                    decoration: const InputDecoration(
                        labelText: 'Password ',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.password)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: confirPassword,
                    decoration: const InputDecoration(
                        labelText: 'Confirm Password ',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.password)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: cell,
                    decoration: const InputDecoration(
                        labelText: 'Cell Number',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.phone)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: address,
                    decoration: const InputDecoration(
                        labelText: 'Address',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.maps_home_work_rounded)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  DateTimeFormField(
                    decoration: const InputDecoration(labelText: 'Date of Birth'),
                    mode: DateTimeFieldPickerMode.date,
                    pickerPlatform: dob,
                    onChanged: (DateTime? value) {
                      print(value);
                    },
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  Row(
                    children: [
                      const Text('Gender:'),
                      Expanded(
                        child: Row(
                          children: [
                            Radio<String>(
                              value: 'Male',
                              groupValue: selectedGender,
                              onChanged: (String? value) {
                                setState(() {
                                  selectedGender = value;
                                });
                              },
                            ),
                            const Text('Male'),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Radio<String>(
                              value: 'Female',
                              groupValue: selectedGender,
                              onChanged: (String? value) {
                                setState(() {
                                  selectedGender = value;
                                });
                              },
                            ),
                            const Text('Female'),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Radio<String>(
                              value: 'Other',
                              groupValue: selectedGender,
                              onChanged: (String? value) {
                                setState((){
                                  selectedGender = value;
                                });
                              },
                            ),
                            const Text('Other'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(

                      onPressed: () {
                        _register();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        foregroundColor: Colors.white,
                      ),

                      child: Text(
                        "Registration",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily:GoogleFonts.lato().fontFamily
                        ),
                      )
                  ),

                ],
              )
          ),
        ),

      ),
    );
  }
}
