import 'package:flutter/material.dart';

class signIn_TF extends StatelessWidget {
  // const LogInputs({super.key});

  final String inputText;
  final bool obsText;
  final theInput;

  const signIn_TF({
    super.key,
    required this.theInput,
    required this.inputText,
    required this.obsText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
        child: TextField(
          controller: theInput,
          obscureText: obsText,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.purple.shade300),
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            ),
            fillColor: Colors.white,
            filled: true,
            hintText: inputText,
          ),
        ));
  }
}
