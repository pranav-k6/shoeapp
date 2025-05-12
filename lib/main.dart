import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoeapp/feature/homepage/view/pages/homepages/home.dart';
import 'package:shoeapp/feature/homepage/view/pages/splash/splash3.dart';
import 'package:shoeapp/feature/homepage/view/services/all.dart';
import 'package:shoeapp/feature/homepage/view/services/payment.dart';
import 'package:shoeapp/feature/homepage/view/services/prices/booking.dart';

import 'package:shoeapp/feature/homepage/view/pages/splash/splash1.dart';
import 'package:shoeapp/feature/homepage/view/widgets/container.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      
     
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Splash3(),
    );
  }
}
