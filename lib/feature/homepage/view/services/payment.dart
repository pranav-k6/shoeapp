// // import 'package:flutter/material.dart';

// // class Payment extends StatelessWidget {
// //   const Payment({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Center(child: Text("Payment Option",
// //         style: TextStyle(fontWeight: FontWeight.bold),)),
// //       ),

// //       body: Padding(
// //         padding:  EdgeInsets.all(8.0),
// //         child: SingleChildScrollView(scrollDirection:Axis.horizontal,
// //           child: Column(
// //             children: [
// //               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                 children: [
// //                 Container(
// //                   height: 150,
// //                   width: 250,
// //                   decoration: BoxDecoration(
// //                     borderRadius: BorderRadius.circular(20),
// //                     // color: Colors.amber,
// //                     image: DecorationImage(image: AssetImage("assets/Credit card mockup.png"),fit: BoxFit.contain)
// //                   ),

// //                 ),

// //                 Container(
// //                   height: 150,
// //                   width: 250,
// //                  decoration: BoxDecoration(
// //                     borderRadius: BorderRadius.circular(20),

// //                      image: DecorationImage(image: AssetImage("assets/Frame 9.png"),fit: BoxFit.contain)
// //                   ),

// //                 ),
// //               ]
// //               ),
// //               Padding(
// //                 padding:  EdgeInsets.only(right: 350),
// //                 child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //                   children: [
// //                     CircleAvatar(
// //                       radius: 15,

// //                       child: Icon(Icons.add)
// //                     ),
// //                     SizedBox(
// //                       width: 5,
// //                     ),

// //                 Text("Add New Cards")

// //                   ],
// //                 ),

// //               ),
// //               Column(mainAxisAlignment: MainAxisAlignment.start,
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   Text("data")
// //                 ],
// //               )
// //             ],
// //           ),

// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';

// class Payment extends StatelessWidget {
//   const Payment({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title:  Center(
//           child: Text(
//             "Payment Option",
//             style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [

//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children: [
//                   cards("assets/Credit card mockup.png"),
//                    SizedBox(width: 10),
//                   cards("assets/Frame 9.png"),
//                 ],
//               ),
//             ),
//              SizedBox(height: 20),

//             Row(
//               children:  [
//                 CircleAvatar(
//                   radius: 15,
//                   child: Icon(Icons.add),
//                 ),
//                 SizedBox(width: 10),
//                 Text(
//                   "Add New Cards",
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//              SizedBox(height: 20),

//              Text(
//               "Other Ways To Pay",
//               style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Container(
//               height: 50,
//               width: double.infinity,

//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),color: Colors.white,
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Icon(Icons.card_travel),
//                         SizedBox(width: 5,),
//                         Text("Credit/Debit card"),

//                       ],
//                     ),
//                     Radio(value: value, groupValue: groupValue, onChanged: onChanged)
//                   ],
//                 ),

//               ),

//             ),

//           ],
//         ),
//       ),
//     );
//   }

//   Widget cards(String imagePath) {
//     return Container(
//       height: 150,
//       width: 250,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         image: DecorationImage(
//           image: AssetImage(imagePath),
//           fit: BoxFit.contain,
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  String? _selectedPaymentMethod; // Tracks the selected payment method

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Payment Option",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  cards("assets/Credit card mockup.png"),
                  const SizedBox(width: 10),
                  cards("assets/Frame 9.png"),
                ],
              ),
            ),
            const SizedBox(height: 20),

            Row(
              children: const [
                CircleAvatar(
                  radius: 15,
                  child: Icon(Icons.add),
                ),
                SizedBox(width: 10),
                Text(
                  "Add New Cards",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 20),

            Text(
              "Other Ways To Pay",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            

            paymentOption("Credit/Debit Card", "credit_card"),
            paymentOption("UPI Payment", "upi"),
            paymentOption("Net Banking", "net_banking"),
            
            Spacer(),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
              ),
              child: Center(
                  child: Text("Continue to Payment",
                      style: TextStyle(
                          color: Colors.white, 
                          fontSize: 18,
                          fontWeight: FontWeight.w600))),
            )
          ],
        ),
      ),
    );
  }

  Widget paymentOption(String title, String value) {
    return ListTile(
      leading: Icon(Icons.payment),
      title: Text(title,),
      trailing: Radio<String>(
        value: value,
        groupValue: _selectedPaymentMethod,
        onChanged: (String? newValue) {
          setState(() {
            _selectedPaymentMethod = newValue;
          });
        },
      ),
    );
  }

  Widget cards(String imagePath) {
    return Container(
      height: 150,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
