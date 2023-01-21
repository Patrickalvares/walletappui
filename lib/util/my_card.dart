import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String balance;
  final String cardNumber;
  final String expiryMonth;
  final String expiryYear;
  // ignore: prefer_typing_uninitialized_variables
  final color;

  const MyCard(
      {Key? key,
      required this.balance,
      required this.cardNumber,
      required this.expiryMonth,
      required this.expiryYear,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        padding: const EdgeInsets.all(20),
        width: 300,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Balanço:',
                        style: TextStyle(color: Colors.white),
                      ),
                      Image.asset(
                        "lib/images/visa.png",
                        height: 45,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'R\$ $balance',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        cardNumber.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text('$expiryMonth/$expiryYear',
                          style: const TextStyle(
                            color: Colors.white,
                          )),
                    ],
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
