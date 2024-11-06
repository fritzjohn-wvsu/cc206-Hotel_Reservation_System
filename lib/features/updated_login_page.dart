import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class UpdateLogin extends StatelessWidget {
  const UpdateLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ciales_ponce',
      home: Login(),
      debugShowCheckedModeBanner: true,
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isSecurePassword = true;

  // Validation for email
  String? validateEmail(String? email) {
    RegExp emailRegex = RegExp(r'^[\w\.-]+@[\w-]+\.\w{2,3}(\.\w{2,3})?$');
    final isEmailValid = emailRegex.hasMatch(email ?? '');
    if (!isEmailValid) {
      return 'Please enter a valid email';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 80),
              const Center(
                child: Text(
                  'Welcome',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              const Center(
                child: Text(
                  'Enter your credentials to login',
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 50),
              // Email TextField
              SizedBox(
                width: 500,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    prefixIcon: Icon(Icons.mail),
                    border: OutlineInputBorder(),
                  ),
                  validator: validateEmail,
                ),
              ),
              const SizedBox(height: 20),
              // Password TextField
              SizedBox(
                width: 500,
                child: TextFormField(
                  obscureText: _isSecurePassword,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                    suffixIcon: togglePassword(),
                  ),
                  validator: (pass) => pass!.length <= 8
                      ? 'Password should contain more than 8 characters'
                      : null,
                ),
              ),
              const SizedBox(height: 35),
              // Login Button
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    // Validate form fields
                    if (_formKey.currentState!.validate()) {
                      // Show success dialog to save login info
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: const Text('Do you want to save your login information?'),
                            actions: <Widget>[
                              TextButton(
                                child: const Text('Yes'),
                                onPressed: () => Navigator.pop(context, 'Yes'),
                              ),
                              TextButton(
                                child: const Text('No'),
                                onPressed: () => Navigator.pop(context, 'No'),
                              ),
                            ],
                          );
                        },
                      ).then((response) {
                        print(response);
                      });
                    } else {
                      // Show error dialog if validation fails
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Invalid Credentials'),
                            content: const Text('Please check your email and password.'),
                            actions: <Widget>[
                              TextButton(
                                child: const Text('OK'),
                                onPressed: () => Navigator.pop(context),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    backgroundColor: Colors.black,
                  ),
                  child: const Text(
                    "Log In",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 100),
              const Center(
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'Don\'t have an account?  Sign In',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget togglePassword() {
    return IconButton(
      onPressed: () {
        setState(() {
          _isSecurePassword = !_isSecurePassword;
        });
      },
      icon: _isSecurePassword ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
    );
  }
}