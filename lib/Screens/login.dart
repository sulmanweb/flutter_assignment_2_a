import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Assignment 2A',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.login, color: Colors.white),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            // Email
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.email),
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.black87),
                hintText: 'Enter your email',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black87),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black87),
                ),
              ),
            ),
            // --Email
            const SizedBox(height: 16),
            // Password
            TextFormField(
              obscureText: true,
              style: const TextStyle(color: Colors.redAccent),
              decoration: const InputDecoration(
                icon: Icon(Icons.lock, color: Colors.redAccent),
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.redAccent),
                hintText: 'Enter your password',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  borderSide: BorderSide(color: Colors.redAccent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  borderSide: BorderSide(color: Colors.redAccent),
                ),
              ),
            ),
            // --Password
            const SizedBox(height: 16),
            // Login Button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontWeight: FontWeight.bold),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text('Login'),
            ),
            // --Login Button
            const SizedBox(height: 16),
            // Don't have an account
            Row(
              children: [
                const Text("Don't have an account?"),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  child: const Text('Sign Up'),
                ),
              ],
            )
            // --Don't have an account
          ]),
        ),
      ),
    );
  }
}
