import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // ignore: non_constant_identifier_names
  String Username = "";

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            'assets/images/login.png',
            fit: BoxFit.cover,
          ),
          Text(
            "Welcome $Username",
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Username',
                    hintText: 'Enter Username',
                  ),
                  onChanged: (value) {
                    Username = value;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter Password',
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 40,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "home");
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "forgotpassword");
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(fontSize: 16),
                    )),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 40,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "register");
                    },
                    child: const Text(
                      'Create Account',
                      style: TextStyle(fontSize: 15),
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
