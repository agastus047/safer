import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  hoverColor: Color.fromARGB(255, 255, 255, 255),
                  filled: true,
                  fillColor: Color.fromARGB(255, 36, 41, 62),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 10.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  hoverColor: Color.fromARGB(255, 255, 255, 255),
                  filled: true,
                  fillColor: Color.fromARGB(255, 36, 41, 62),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 10.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  hoverColor: Color.fromARGB(255, 255, 255, 255),
                  filled: true,
                  fillColor: Color.fromARGB(255, 36, 41, 62),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 10.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  hoverColor: Color.fromARGB(255, 255, 255, 255),
                  filled: true,
                  fillColor: Color.fromARGB(255, 36, 41, 62),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 10.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  hoverColor: Color.fromARGB(255, 255, 255, 255),
                  filled: true,
                  fillColor: Color.fromARGB(255, 36, 41, 62),
                ),
                obscureText: true,
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20.0),
              SizedBox(height: 10.0),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
                child: Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
