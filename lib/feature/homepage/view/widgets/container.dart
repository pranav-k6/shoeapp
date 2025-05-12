import 'package:flutter/material.dart';

class Containers extends StatelessWidget {
  const Containers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
                height: 300,
                width:500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(image: AssetImage("assets/download.jpeg"),fit: BoxFit.fill),
                 
                ),
                child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Sneakers",
                                  style: TextStyle(fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),),
                                  Icon(Icons.favorite)
                                ],
                              ),
                            ],
                          ),
                        ),
                
                
              ),
      ),
    );
  }
}