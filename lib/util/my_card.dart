import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: 300,
      decoration: BoxDecoration(
        color: Colors.deepPurple[300],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Balanço:',
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'R\$ 5.257,36',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              '**** 3456',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Text('10/24',
                style: TextStyle(
                  color: Colors.white,
                )),
          ],
        ),
      ]),
    );
  }
}
