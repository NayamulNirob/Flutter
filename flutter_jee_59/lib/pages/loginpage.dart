import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Loginpage extends StatelessWidget {

final TextEditingController email= TextEditingController();
final TextEditingController password= TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Use Email And Password',
              style: GoogleFonts.roboto(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 35.0,
                fontWeight: FontWeight.w800,

                fontStyle: FontStyle.italic
              )
            ),
            Text(
              'Hello World',
              style: GoogleFonts.arimo(
                color: Colors.green,
                fontSize: 25.0,
                fontWeight: FontWeight.w200,
                fontStyle: FontStyle.normal,
                letterSpacing: 6.0,

              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: email,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email)
              ),
            ),

            const SizedBox(
              height: 25.0,
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
              height: 25.0,
            ),
            ElevatedButton(
                onPressed: (){
                  String em = email.text;
                  String pass=password.text;
                  print('Email: $em, \nPassword: $pass');

                },
                style:ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    foregroundColor: Colors.white),
                child:Text(
                  "Login",
                  style: TextStyle(
                      fontFamily: GoogleFonts.roboto(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 48,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                      ).fontFamily
                  ),
                ),
            ),
          ],

        ),
      ),
    );
  }
}
