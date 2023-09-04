import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_ewallet_app/components/pay_TF.dart';
import 'package:flutter_ewallet_app/components/topUp_TF.dart';

class Home extends StatelessWidget {
  final String username;
  final double saldo;

  Home({super.key, required this.username, required this.saldo});

  @override
  Widget build(BuildContext context) {
    LongLong? nominal;
    String? recipient;

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            // 'Welcome, $username!',
            'Welcome, $username!',
            style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.purple),
          ),
          const SizedBox(height: 10),
          // USER PROFILE IMAGE HERE
          // Image.asset(
          //   'background.png',
          //   width: 300,
          //   height: 300,
          // ),

          GestureDetector(
            onTap: () {}, // GO TO PROFILE SCREEN
            child: const Icon(
              Icons.person,
              color: Colors.grey,
              size: 150,
            ),
          ),

          const SizedBox(height: 10),

          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Balance Rp.',
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  '${saldo.toStringAsFixed(2)}',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.purple.shade100),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),
          Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton.extended(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          width: double.infinity,
                          child: Column(
                            children: [
                              const SizedBox(height: 16),
                              const Text("Pay",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),

                              const SizedBox(height: 16),

                              // PAY TF HERE
                              pay(
                                theInput: recipient,
                                hintInput: 'Masukkan nama yang dituju',
                                obsText: false,
                              ),

                              pay(
                                  theInput: nominal,
                                  hintInput: 'Nominal',
                                  obsText: false),

                              Container(
                                width: 360,
                                height: 50,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.purple),
                                  child: const Text(
                                    "Transfer",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      });
                },
                label: Text(
                  'Pay',
                  style: TextStyle(color: Colors.purple, fontSize: 18),
                ),
                icon: Icon(
                  Icons.add_circle,
                  color: Colors.purple,
                ),
                backgroundColor: Colors.white,
              ),
              const SizedBox(width: 10),

              FloatingActionButton.extended(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          width: double.infinity,
                          child: Column(
                            children: [
                              const SizedBox(height: 16),
                              const Text("Top Up",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),

                              const SizedBox(height: 16),

                              // PAY TF HERE
                              topUp(
                                theInput: nominal,
                                hintInput: 'Jumlah Saldo',
                                obsText: false,
                              ),
                              // const SizedBox(height: 100),

                              Container(
                                width: 360,
                                height: 50,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.purple),
                                  child: const Text(
                                    "Confirm",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      });
                },
                label: Text(
                  'Top Up',
                  style: TextStyle(color: Colors.purple, fontSize: 18),
                ),
                icon: Icon(
                  Icons.arrow_upward_outlined,
                  color: Colors.purple,
                ),
                backgroundColor: Colors.white,
              ),

              // Icon(
              //   Icons.arrow_upward_outlined,
              //   color: Colors.purple,
              // ),
              // SizedBox(width: 10),
              // Text(
              //   'Top Up',
              //   style: TextStyle(color: Colors.purple, fontSize: 18),
              // ),
              // ],
              // ),
              // style: ElevatedButton.styleFrom(
              //     backgroundColor: Colors.white,
              //     side: BorderSide(color: Colors.purple.shade100)),
              // ),
              // const SizedBox(width: 20),
            ],
            // ),
          ))
        ],
      )),
    );
  }
}
