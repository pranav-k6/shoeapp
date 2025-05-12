import 'package:flutter/material.dart';
import 'package:shoeapp/feature/homepage/model/sneakres_model.dart';

class PricePage extends StatelessWidget {
  final Sneakres sneaker;

  const PricePage({Key? key, required this.sneaker}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(sneaker.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(sneaker.image),
            const SizedBox(height: 20),
            Text(
              sneaker.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              "INR ${sneaker.price}",
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
