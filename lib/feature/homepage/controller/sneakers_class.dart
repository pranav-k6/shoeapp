
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:shoeapp/feature/homepage/model/sneakres_model.dart';
// import 'package:shoeapp/feature/homepage/view/services/sneakers.dart';

// List<Sneakres> sneakerslist = [
//   Sneakres(
//     name: 'Nike',
//     price: 500,
//     image: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXxlbnwwfHwwfHx8MA%3D%3D',
//   ),
//   Sneakres(
//     name: 'Adidas',
//     price: 450,
//     image: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXxlbnwwfHwwfHx8MA%3D%3D',
//   ),
// ];
// final sneakersProvider=Provider<List<Sneakers>>((ref){
//   return sneakerslist;
// });
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoeapp/feature/homepage/model/sneakres_model.dart';

final sneakersProvider = Provider<List<Sneakres>>((ref) {
  return [
    Sneakres(
      name: 'Nike',
      price: 500,
      image: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=500&auto=format&fit=crop&q=60',
    ),
    Sneakres(
      name: 'Adidas',
      price: 450,
      image: 'https://images.unsplash.com/photo-1560769629-975ec94e6a86?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
  ];
});
