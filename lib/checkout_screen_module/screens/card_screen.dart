import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.arrow_back_ios_new_outlined),
              SizedBox(
                height: 20,
              ),
              Text(
                'Credit / Debit card',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 250,
                width: 380,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/Base.png')),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Image.asset('assets/images/mc_symbol.png')],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '4747  4747  4747  4747',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'ALEXANDRA SMITH',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                          Text(
                            '07/21',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Image.asset('assets/images/Take a photo icon.png')],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Name on card',
                style: TextStyle(color: Colors.grey),
              ),
              TextFormField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    fillColor: Colors.grey.shade100,
                    hintText: 'Alexandra Smith',
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Card Number',
                style: TextStyle(color: Colors.grey),
              ),
              TextFormField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    fillColor: Colors.grey.shade100,
                    hintText: '4747 4747 4747 4747',
                    suffixIcon: Image.asset('assets/images/mc_symbol.png'),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Expiry date',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[100]),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CVV',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                alignment: Alignment.centerRight,
                                image: AssetImage('assets/images/Hint.png')),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[100]),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[700],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      minimumSize: Size(400, 50)),
                  child: Text(
                    'USE THIS CARD ONLY',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
