import 'package:assignment_2_a/Screens/login.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Assignment 2A Register',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.greenAccent,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Login(),
                  ),
                );
              },
              icon: const Icon(Icons.logout, color: Colors.black),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // First Name
              TextFormField(
                style: const TextStyle(color: Colors.greenAccent),
                cursorColor: Colors.greenAccent,
                decoration: const InputDecoration(
                  labelText: 'First Name',
                  labelStyle: TextStyle(color: Colors.greenAccent),
                  hintText: 'Enter your first name',
                  hintStyle: TextStyle(color: Colors.greenAccent),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      width: 5.0,
                      color: Colors.greenAccent,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      width: 5.0,
                      color: Colors.greenAccent,
                    ),
                  ),
                ),
              ),
              // --First Name
              const SizedBox(height: 16),
              // Last Name
              TextFormField(
                style: const TextStyle(color: Colors.redAccent),
                cursorColor: Colors.redAccent,
                decoration: const InputDecoration(
                  labelText: 'Last Name',
                  labelStyle: TextStyle(color: Colors.redAccent),
                  hintText: 'Enter your last name',
                  hintStyle: TextStyle(color: Colors.redAccent),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 5,
                      color: Colors.redAccent,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 5,
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ),
              // --Last Name
              const SizedBox(height: 16.0),
              // Email
              TextFormField(
                cursorColor: Colors.black,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.black),
                  hintText: 'Enter your email',
                  prefixIcon: Icon(Icons.email),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              // --Email
              const SizedBox(height: 16.0),
              // Password
              TextFormField(
                obscureText: true,
                obscuringCharacter: 'X',
                cursorColor: Colors.blueAccent,
                style: const TextStyle(color: Colors.blueAccent),
                decoration: const InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.blueAccent),
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(color: Colors.blueAccent),
                  suffixIcon: Icon(
                    Icons.lock,
                    color: Colors.blueAccent,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent),
                    borderRadius: BorderRadius.all(Radius.zero),
                  ),
                ),
              ),
              // --Password
              const SizedBox(height: 16.0),
              // Register Button
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  minimumSize: const Size(double.infinity, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: const BorderSide(
                      width: 3,
                      color: Colors.black,
                    ),
                  ),
                ),
                child: const Text('Register'),
              ),
              // --Register Button
              const SizedBox(height: 16.0),
              // Already have an account
              Row(
                children: [
                  const Text("Already have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Login(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    child: const Text('Sign In'),
                  ),
                ],
              ),
              // --Already have an account
            ],
          ),
        ),
      ),
    );
  }
}
