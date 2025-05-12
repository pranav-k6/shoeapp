// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:shoeapp/feature/homepage/view/services/cart_provider.dart';

// class CartPage extends ConsumerWidget {
//   const CartPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final cartItems = ref.watch(cartProvider);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Cart'),
//       ),
//       body: cartItems.isEmpty
//           ? const Center(
//               child: Text(
//                 'Your cart is empty!',
//                 style: TextStyle(fontSize: 18),
//               ),
//             )
//           : ListView.builder(
//               itemCount: cartItems.length,
//               itemBuilder: (context, index) {
//                 final sneaker = cartItems[index];
//                 return ListTile(
//                   leading: Image.network(
//                     sneaker.image,
//                     width: 50,
//                     height: 50,
//                     fit: BoxFit.cover,
//                   ),
//                   title: Text(sneaker.name),
//                   subtitle: Text('INR ${sneaker.price}'),
//                   trailing: IconButton(
//                     icon: const Icon(Icons.delete),
//                     onPressed: () {
//                       ref.read(cartProvider.notifier).removeFromCart(sneaker);
//                     },
//                   ),
//                 );
//               },
//             ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoeapp/feature/homepage/controller/cart_provider.dart';
import 'package:shoeapp/feature/homepage/view/services/cart_provider.dart';

class CartPage extends ConsumerWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartItems = ref.watch(cartProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body
          : ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final sneaker = cartItems[index];
                return ListTile(
                  leading: Image.network(
                    sneaker.image,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(sneaker.name),
                  subtitle: Text('INR ${sneaker.price}'),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      ref.read(cartProvider.notifier).removeFromCart(sneaker);
                    },
                  ),
                );
              },
            ),
    );
  }
}
