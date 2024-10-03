import 'package:flutter/material.dart';

void main() {
  runApp(SignUp());
}

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // About Me section
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: 10, left: 50, right: 50, bottom: 50),
                  ),
                  Column(
                    children: [
                      Text(
                        "SIGN IN",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Create Your Account!",
                        style: TextStyle(color: Colors.black87, fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
              // Username field
              SizedBox(height: 50),
              Container(
                width: 500, // Set desired width here
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Email field
              Container(
                width: 500, // Set desired width here
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'E-mail Address',
                  ),
                ),
              ),
              // Password field
              SizedBox(height: 20),
              Container(
                width: 500, // Set desired width here
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                  obscureText: true, // Added for password concealment
                ),
              ),
              // Confirm Password field
              SizedBox(height: 20),
              Container(
                width: 500, // Set desired width here
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Icon(
                        Icons.check,
                        color: Colors.black,
                      ),
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'Confirm Password',
                  ),
                  obscureText: true, // Added for password concealment
                ),
              ),

              SizedBox(height: 20),
              //Sign in button
              Container(
                width: 175,
                height: 70,
                padding:
                    EdgeInsets.only(top: 14, left: 10, right: 10, bottom: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.black, // Change this to your desired color
                  ),
                  onPressed: () {},
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Text(
                  "or",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              //Sign in button
              Container(
                width: 200,
                height: 60,
                padding: EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.black, // Change this to your desired color
                  ),
                  onPressed: () {},
                  child: Text(
                    'Sign in with Google',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an Account?",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: Text('Log in'),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
