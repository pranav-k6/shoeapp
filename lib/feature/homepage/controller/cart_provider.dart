// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:shoeapp/feature/homepage/model/sneakres_model.dart';

// class CartProvider extends Notifier<List<Sneakres>> {
//   @override
//   List<Sneakres> build() {
//     return [];
    
//   }
//   void addProduct(Sneakres shoes){
//     state=[...state,shoes];
//   }
//   void removeProduct(Sneakres shoes){
//     state.remove(shoes);
//   }
// }
// final cartProvider=NotifierProvider<CartProvider,List<Sneakres>>(()=cartProvider());
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoeapp/feature/homepage/model/sneakres_model.dart';

class CartProvider extends Notifier<List<Sneakres>> {
  @override
  List<Sneakres> build() {
    return [];
  }

  void addToCart(Sneakres shoes) {
    state = [...state, shoes];
  }

  void removeFromCart(Sneakres shoes) {
    state = state.where((item) => item != shoes).toList();
  }
}

final cartProvider = NotifierProvider<CartProvider, List<Sneakres>>(() => CartProvider());
