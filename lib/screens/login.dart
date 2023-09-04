import 'package:flutter/material.dart';
import 'package:flutter_ewallet_app/components/log_TF.dart';
import 'package:flutter_ewallet_app/screens/home.dart';
import 'package:flutter_ewallet_app/screens/signIn.dart';

final _logKey = GlobalKey<FormState>();

class Login extends StatelessWidget {
  Login({super.key});

  final usernameInput = TextEditingController();
  final passwordInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: SafeArea(
            child: SingleChildScrollView(
                child: Center(
          child: Column(
            children: [
              const SizedBox(height: 150),
              const Text(
                "Login",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.purple,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),

              // username textfield 
              LogInputs(
                theInput: usernameInput,
                hintInput: 'Username',
                obsText: false,
              ),

              // password textfield
              LogInputs(
                theInput: passwordInput,
                hintInput: 'Password',
                obsText: true,
              ),
              // const SizedBox(height: 20),

              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => signIn()),
                    );
                  },
                  child: const Text(
                    "Don't have an account? Sign in here",
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
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              )

              // )
            ],
          ),
        ))));
  }
}
