import 'package:delivery_app/Category_screen_module/screens/vegetable_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List arrItems = [
    {
      'image': 'assets/images/Media.png',
      'title': 'Vegetables',
      'subtitle': '(43)'
    },
    {
      'image': 'assets/images/Media-2.png',
      'title': 'Fruits',
      'subtitle': '(32)'
    },
    {
      'image': 'assets/images/Media-3.png',
      'title': 'Bread',
      'subtitle': '(22)'
    },
    {
      'image': 'assets/images/Media-4.png',
      'title': 'Sweets',
      'subtitle': '(56)'
    },
    {
      'image': 'assets/images/Media.png',
      'title': 'Vegetables',
      'subtitle': '(43)'
    },
    {
      'image': 'assets/images/Media-2.png',
      'title': 'Fruits',
      'subtitle': '(32)'
    },
    {
      'image': 'assets/images/Media-3.png',
      'title': 'Bread',
      'subtitle': '(22)'
    },
    {
      'image': 'assets/images/Media-4.png',
      'title': 'Sweets',
      'subtitle': '(56)'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF6F5F5),
        body: Padding(
          padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios_new)),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 13),
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VegetableScreen(),
                          ));
                    },
                    child: GridView.builder(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 40),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.grey.shade200,
                                style: BorderStyle.solid),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  arrItems[index]['image'],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(arrItems[index]['title']),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(arrItems[index]['subtitle'])
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: arrItems.length,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 0.8,
                        mainAxisSpacing: 0.5,
                        crossAxisSpacing: 5,
                        crossAxisCount: 2,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
