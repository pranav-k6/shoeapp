
import 'package:flutter/material.dart';
import 'package:shoeapp/feature/homepage/view/services/prices/booking.dart';
import 'package:shoeapp/feature/homepage/view/services/sneakers.dart';

class Price extends StatelessWidget {
  const Price({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height,
            width: double.infinity,
            decoration:  BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/photo-1542291026-7eec264c27ff.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 100, left: 20, right: 20,top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white
                      ),
                      child: Center(child: Icon(Icons.arrow_back_ios_sharp))),
                  ),
                    Spacer(),
                   Text(
                    "Sneakers",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child:  Center(child: Text("42")),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child:  Center(child: Text("46")),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child:  Center(child: Text("48")),
                      ),
                    ],
                  ),
                   SizedBox(height: 20),
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Booking()));
                  },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                      ),
                      child:  Center(
                        child: Text(
                          "Order",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
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
        ],
      ),
    );
  }
}
