// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletappui/util/my_button.dart';
import 'package:walletappui/util/my_card.dart';
import 'package:walletappui/util/my_list_tile.dart';

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
            SizedBox(
              height: 189.21,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: const [
                  MyCard(
                    balance: '5.250,20',
                    cardNumber: '4528 9431',
                    expiryMonth: '02',
                    expiryYear: '25',
                    color: Colors.deepPurple,
                  ),
                  MyCard(
                    balance: '1.269,78',
                    cardNumber: '7648 9238',
                    expiryMonth: '09',
                    expiryYear: '26',
                    color: Colors.red,
                  ),
                  MyCard(
                    balance: '12.798,77',
                    cardNumber: '4985 6755',
                    expiryMonth: '12',
                    expiryYear: '29',
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
            const SizedBox(height: 40),
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
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: const [
                  MyListTile(
                      iconImagePath: 'lib/images/statistics.png',
                      tileSubtitle: 'Entradas e Saídas Futuras',
                      tiletitle: 'Estatística'),
                  MyListTile(
                    iconImagePath: 'lib/images/pix.png',
                    tileSubtitle: "Histórico de Transações",
                    tiletitle: "Pix",
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home, size: 32, color: Colors.red),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings, size: 32, color: Colors.green),
            )
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.monetization_on,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
