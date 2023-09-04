import 'package:flutter/material.dart';
import 'package:flutter_ewallet_app/components/signIn_TF.dart';
import 'package:flutter_ewallet_app/screens/home.dart';
import 'package:flutter_ewallet_app/screens/login.dart';

class signIn extends StatelessWidget {
  signIn({super.key});

  final nameInput = TextEditingController();
  final usernameInput = TextEditingController();
  final phoneNumberInput = TextEditingController();
  final emailInput = TextEditingController();
  final passwordInput = TextEditingController();
  final confirmPasswordInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: SafeArea(
            child: SingleChildScrollView(
                child: Center(
          child: Column(
            children: [
              const SizedBox(height: 100),
              const Text(
                "Sign In",
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),

              // name textfield
              signIn_TF(
                theInput: nameInput,
                inputText: 'Name',
                obsText: false,
              ),

              // username textfield
              signIn_TF(
                theInput: usernameInput,
                inputText: 'Username',
                obsText: false,
              ),

              // Phone number textfield
              signIn_TF(
                theInput: phoneNumberInput,
                inputText: 'Phone Number',
                obsText: false,
              ),

              // email textfield
              signIn_TF(
                theInput: emailInput,
                inputText: 'Email',
                obsText: false,
              ),

              // password textfield
              signIn_TF(
                theInput: passwordInput,
                inputText: 'Password',
                obsText: true,
              ),

              // confirm password textfield
              signIn_TF(
                theInput: confirmPasswordInput,
                inputText: 'Confirm Password',
                obsText: true,
              ),

              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: const Text(
                    "Have an account? Log in here",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        decoration: TextDecoration.underline),
                  )),
              const SizedBox(height: 10),

              Container(
                width: 360,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Home(username: 'User123', saldo: 150000)));
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                  child: const Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ))));
  }
}
