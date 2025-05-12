
import 'package:flutter/material.dart';
import 'package:shoeapp/feature/homepage/view/services/all.dart';
import 'package:shoeapp/feature/homepage/view/services/boots.dart';
import 'package:shoeapp/feature/homepage/view/services/cart.dart';
import 'package:shoeapp/feature/homepage/view/services/sneakers.dart';
import 'package:shoeapp/feature/homepage/view/services/sports.dart';

class Home1 extends StatelessWidget {
  const Home1({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Shoes",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartPage()),
                );
              },
              icon: const Icon(Icons.shopping_cart),
            ),
          ],
          bottom:  TabBar(
            tabs: [
              Tab(
                child: Text(
                  "All",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "SNEAKERS",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "BOOTS",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "SPORTS",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            All(),
            SneakersPage(),
            Boots(),
            Sports(),
          ],
        ),
      ),
    );
  }
}
