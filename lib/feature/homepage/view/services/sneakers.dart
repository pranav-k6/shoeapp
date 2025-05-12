
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoeapp/feature/homepage/controller/cart_provider.dart';
import 'package:shoeapp/feature/homepage/controller/sneakers_class.dart';
import 'package:shoeapp/feature/homepage/view/services/cart.dart';
import 'package:shoeapp/feature/homepage/view/services/prices/book.dart';
import 'package:shoeapp/feature/homepage/view/services/sneakers_provider.dart';
import 'package:shoeapp/feature/homepage/view/services/cart_provider.dart';

class SneakersPage extends ConsumerWidget {
  const SneakersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sneakers = ref.watch(sneakersProvider);

    return Scaffold(
    
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: sneakers.length,
          itemBuilder: (BuildContext context, int index) {
            final sneakres = sneakers[index];
            return InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Price()));
            },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: NetworkImage(sneakres.image),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          sneakres.name,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "INR ${sneakres.price}",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ElevatedButton(
                          onPressed: () {
                            ref.read(cartProvider.notifier).addToCart(sneakres);
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('${sneakres.name} added to cart!'),
                                duration: const Duration(seconds: 2),
                              ),
                            );
                          },
                          child: const Text('Add to Cart'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
