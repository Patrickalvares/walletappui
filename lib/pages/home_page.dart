// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:walletappui/util/my_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text(
                        'Meus',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' Cartões',
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                  Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.add))
                ],
              ),
            ),
            const SizedBox(height: 25),
            Container(
              height: 200,
              child: PageView(
                children: const [
                  MyCard(
                    balance: 5250.20,
                    cardNumber: 45289431,
                    expiryMonth: 02,
                    expiryYear: 25,
                    color: Colors.deepPurple,
                  ),
                  MyCard(
                    balance: 1269.78,
                    cardNumber: 76489238,
                    expiryMonth: 09,
                    expiryYear: 26,
                    color: Colors.red,
                  ),
                  MyCard(
                    balance: 12798.77,
                    cardNumber: 49856755,
                    expiryMonth: 12,
                    expiryYear: 29,
                    color: Colors.blue,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
