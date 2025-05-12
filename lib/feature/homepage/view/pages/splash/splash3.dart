import 'package:flutter/material.dart';
import 'package:random_text_reveal/random_text_reveal.dart';

class Splash3 extends StatelessWidget {
  const Splash3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: double.infinity,
        color: Colors.black,
        child: Center(
          child: RandomTextReveal(text: 'SHOEZZYY',
          duration: Duration(seconds: 2),style: TextStyle(
            fontSize: 50,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          curve: Curves.easeInExpo,
          ),
        ),
      ),
    );
  }
}