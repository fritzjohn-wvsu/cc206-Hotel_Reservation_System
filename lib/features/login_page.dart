import 'package:flutter/material.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
	body:  Column(
	children: [
		// Put the list of widgets here, separated by commas
    Text('LOGIN PAGE'),
    TextField(decoration: InputDecoration(labelText: 'Username'),),
    TextField(obscureText: true, decoration: InputDecoration(labelText: 'password'),),
    TextButton(
      onPressed: (){

      }, child: const Text(
        "LOGIN"
      ))

]
)
);
  }
}

