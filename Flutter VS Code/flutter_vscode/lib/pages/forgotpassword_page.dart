// ignore_for_file: file_names
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            'assets/images/ForgotPassword.png',
            fit: BoxFit.cover,
            scale: 2,
          ),
          const Text(
            "Enter Your Phone Number",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Phone Number',
                    hintText: 'Enter Phone Number',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 40,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "home");
                    },
                    child: const Text(
                      'Find Your Account',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
