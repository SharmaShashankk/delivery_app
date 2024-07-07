import 'package:delivery_app/Category_screen_module/screens/item_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class VegetableScreen extends StatefulWidget {
  const VegetableScreen({super.key});

  @override
  State<VegetableScreen> createState() => _VegetableScreenState();
}

class _VegetableScreenState extends State<VegetableScreen> {
  List arrProduct = [
    'Cabbage and lettuce(14)',
    'Cucumbers and Tomatoes',
    'Cabbage and lettuce(14)',
    'Cucumbers and Tomatoes',
    'Cabbage and lettuce(14)',
    'Cucumbers and Tomatoes',
  ];

  int coloredIndex = 0;

  List arrVeggies = [
    'Onions and Garlic(8)',
    'Peppers(7)',
    'Potatoes and Peas(21)',
    'Onions and Garlic(8)',
    'Peppers(7)',
    'Potatoes and Peas(21)',
  ];
  List arrItems = [
    {
      'image': 'assets/images/Media-5.png',
      'title': 'Boston Lettuce',
      'subtitle': '1.10\$/piece',
      'subtitle1': 'assets/images/Frame 27.png',
      'subtitle2': 'assets/images/Secondary.png'
    },
    {
      'image': 'assets/images/Media-6.png',
      'title': 'Purple Cauliflower',
      'subtitle': '1.85\$/kg',
      'subtitle1': 'assets/images/Frame 27.png',
      'subtitle2': 'assets/images/Secondary.png'
    },
    {
      'image': 'assets/images/Media-7.png',
      'title': 'Savoy Cabbage',
      'subtitle': '1.45\$/kg',
      'subtitle1': 'assets/images/Frame 27.png',
      'subtitle2': 'assets/images/Secondary.png'
    },
    {
      'image': 'assets/images/Media-5.png',
      'title': 'Boston Lettuce',
      'subtitle': '1.85\$/piece',
      'subtitle1': 'assets/images/Frame 27.png',
      'subtitle2': 'assets/images/Secondary.png'
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
                  child: Icon(Icons.arrow_back_ios_new_outlined)),
              SizedBox(
                height: 30,
              ),
              Text(
                'Vegetables',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
                height: 40,
              ),
              SizedBox(
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: arrProduct.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          height: 45,
                          width: 230,
                          decoration: BoxDecoration(
                              color: 0 == coloredIndex
                                  ? Colors.deepPurple[100]
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all()),
                          child: Center(
                            child: Text(
                              arrProduct[index],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
                child: ListView.builder(
                  itemCount: arrVeggies.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          height: 45,
                          width: 230,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(),
                          ),
                          child: Center(
                            child: Text(arrVeggies[index]),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: arrItems.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          leading: Image.asset(
                            arrItems[index]['image'],
                          ),
                          title: Text(
                            arrItems[index]['title'],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(arrItems[index]['subtitle']),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(arrItems[index]['subtitle1']),
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  ItemScreen(),
                                            ));
                                      },
                                      child: Image.asset(
                                          arrItems[index]['subtitle2']))
                                ],
                              )
                            ],
                          ),
                        ),
                        Divider(),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
