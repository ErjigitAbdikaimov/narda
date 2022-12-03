import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftKubik = 6;
  int rightKubik = 6;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text(
          'игра нарды',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Colors.red,
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    leftKubik = Random().nextInt(7);
                    rightKubik = Random().nextInt(7);
                  });
                },
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Image.asset(
                    'dice${leftKubik == 0 ? leftKubik = 1 : leftKubik}.png',
                    width: 300,
                    height: 300,
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    rightKubik = Random().nextInt(7);
                    leftKubik = Random().nextInt(7);
                  });
                },
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Image.asset(
                    'dice${rightKubik == 0 ? rightKubik = 1 : rightKubik}.png',
                    width: 300,
                    height: 300,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
