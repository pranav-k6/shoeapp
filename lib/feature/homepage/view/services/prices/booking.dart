
// import 'package:flutter/material.dart';
// import 'package:shoeapp/feature/homepage/view/services/payment.dart';

// class Booking extends StatefulWidget {
//   const Booking({super.key});

//   @override
//   State<Booking> createState() => _BookingState();
// }

// class _BookingState extends State<Booking> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(child: Text("Address",
//         style: TextStyle(
//           fontWeight: FontWeight.w700,
//         ),)),
//         automaticallyImplyLeading: false,
//         leading: IconButton(onPressed: (){
//           Navigator.pop(context);
//         }, icon:Icon(Icons.arrow_back_ios) ),
        
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               TextFormField(
//                 decoration: InputDecoration(
//                   hintText: "Name",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//                SizedBox(height: 10),
              
//               TextFormField(
//                 decoration: InputDecoration(
//                   hintText: "Address",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//                SizedBox(height: 10),
              
//               TextFormField(
//                 decoration: InputDecoration(
//                   hintText: "Phone Number",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//                SizedBox(height: 10),
              
//               TextFormField(
//                 decoration: InputDecoration(
//                   hintText: "Pincode",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//                SizedBox(height: 20),
            
//               Container(
//                 height: 150,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(10),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.3),
//                       blurRadius: 5,
//                       offset:  Offset(0, 3),
//                     ),
//                   ],
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
                     
//                       Container(
//                         height: 100,
//                         width: 100,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           image:  DecorationImage(
//                             image: AssetImage(
//                                 "assets/photo-1542291026-7eec264c27ff.jpg"),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                        SizedBox(width: 16),
                      
//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                              Text(
//                               "NIKE SNEAKERS",
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black,
//                               ),
//                             ),
//                              SizedBox(height: 8),
//                              Text(
//                               "Comfortable and stylish sneakers for everyday use.",
//                               style: TextStyle(
//                                 fontSize: 14,
//                                 color: Colors.grey,
//                               ),
//                             ),
//                              Spacer(),
//                              Text(
//                               "INR 500",
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w600,
//                                 color: Colors.black,
//                               ),
//                              ),
                  
//                           ],
//                         ),
//                       ),
                  
//                     ],
//                   ),
//                 ),
//               ),
//             SizedBox(height: 30,),
//               InkWell(onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Payment()));
//               },
//                 child: CircularProgressIndicator(
//                   child: Container(
//                     height: 50,
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Colors.black
//                     ),
//                     child: Center(child: Text("Payment",style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold
//                     ),)),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:shoeapp/feature/homepage/view/services/payment.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  bool isLoading = false; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Address",
            style: TextStyle(
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Address",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Phone Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Pincode",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage("assets/photo-1542291026-7eec264c27ff.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "NIKE SNEAKERS",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              "Comfortable and stylish sneakers for everyday use.",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                            const Spacer(),
                            const Text(
                              "INR 500",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isLoading = true;
                  });
                 
                  Future.delayed(const Duration(seconds: 2), () {
                    setState(() {
                      isLoading = false;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Payment()),
                    );
                  });
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black,
                  ),
                  child: Center(
                    child: isLoading
                        ?  CircularProgressIndicator(
                            color: Colors.white,
                          )
                        :  Text(
                            "Payment",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
