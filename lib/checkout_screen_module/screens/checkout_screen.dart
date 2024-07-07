import 'package:delivery_app/checkout_screen_module/screens/card_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black,
        elevation: 10,
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text('Checkout'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Payment method',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'CHANGE',
                  style: TextStyle(
                      color: Colors.deepPurple[800],
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CardScreen(),
                    ));
              },
              child: Row(
                children: [
                  Icon(Icons.credit_card_outlined),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    '**** **** **** 4747',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  ' Delivery address',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'CHANGE',
                  style: TextStyle(
                      color: Colors.deepPurple[800],
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.home_outlined),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Alexandra Smith\nCesu 31 k-2 5.st,SIA Chili\nRiga\nLV-1012\nLatvia',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  ' Delivery options',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'CHANGE',
                  style: TextStyle(
                      color: Colors.deepPurple[800],
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(Icons.directions_walk),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "I'll pick it up myself",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(Icons.local_shipping_outlined),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'By courier',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Image.asset('assets/images/Drone.png'),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'By Drone',
                  style: TextStyle(
                      color: Colors.deepPurple[800],
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(
                  Icons.done,
                  size: 25,
                  color: Colors.deepPurple[800],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Non-contact-delivery',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Image.asset('assets/images/Switch.png')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
