// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletappui/util/my_button.dart';
import 'package:walletappui/util/my_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 25.0,
                right: 25,
                left: 25,
              ),
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
              height: 189.21,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
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
            SizedBox(height: 20),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade600,
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  MyButton(
                    iconURL: 'lib/images/send-money.png',
                    buttonText: 'Depositar',
                  ),
                  MyButton(
                    iconURL: 'lib/images/credit-card.png',
                    buttonText: 'Pagar Fatura',
                  ),
                  MyButton(
                    iconURL: 'lib/images/bill.png',
                    buttonText: 'Extrato',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey.shade100,
                            ),
                            height: 80,
                            child: Image.asset('lib/images/statistics.png'),
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Estatísticas',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Entradas e Saídas Futuras',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
