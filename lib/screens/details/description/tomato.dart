import 'package:flutter/material.dart';

class Tomato extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.black,
            onPressed: () => {Navigator.of(context).pop()},
          ),
          title: const Text(
            "TOMATO",
            textAlign: TextAlign.start,
          ),
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Image.asset('assets/images/dtomato.jpeg'),
                Text(
                  "Tomatoes are a popular and versatile fruit (although often used as a vegetable) that are widely used in cooking and enjoyed by many people around the world. They are typically round or oval-shaped, with a bright red or yellow skin and a juicy, fleshy interior."
                  "Tomatoes are members of the nightshade family and are native to South America. They are rich in nutrients such as vitamin C, potassium, and lycopene, which is an antioxidant that gives tomatoes their distinctive red color."
                  "Tomatoes can be eaten raw, cooked, or canned, and are commonly used in a variety of dishes, including salads, sauces, soups, stews, and pasta dishes. They can also be dried or made into tomato paste, which is a popular ingredient in many recipes."
                  "In addition to their culinary uses, tomatoes have been linked to a number of health benefits, including reducing the risk of heart disease, cancer, and stroke. Overall, tomatoes are a tasty and healthy addition to any diet..\n"
                  "Types of diseases that can be identified in tomato\n"
                  "1.Tomato___Bacterial_spot\n"
                  '2.Tomato___Early_blight,Tomato___Late_blight\n'
                  "3.Tomato___Leaf_Mold\n"
                  "4.Tomato___Septoria_leaf_spot\n"
                  "5.Tomato___Spider_mites Two-spotted_spider_mite\n"
                  "6.Tomato___Target_Spot\n"
                  "7.Tomato___Tomato_Yellow_Leaf_Curl_Virus\n"
                  "8.Tomato___Tomato_mosaic_virus\n",
                  style: TextStyle(fontSize: 16.0),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
