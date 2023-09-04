import 'package:flutter/material.dart';

class LogInputs extends StatelessWidget {

  final String hintInput;
  final bool obsText;
  final theInput;

  const LogInputs({
    super.key,
    required this.theInput,
    required this.hintInput,
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
            hintText: hintInput,
          ),
        ));
  }
}
