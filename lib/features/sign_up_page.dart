import 'package:flutter/material.dart';

void main() {
  runApp(const SignUpPage());
}

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Text("Sign Up"),
      TextField(decoration: InputDecoration(labelText: "Username")),
      TextField(decoration: InputDecoration(labelText: "Password")),
      TextButton(
          onPressed: () {
//Act when the button is pressed
          },
          child: const Text(
            "Click Me!!",
          )),

      // Put the list of widgets here, separated by commas
    ]));
  }
}
