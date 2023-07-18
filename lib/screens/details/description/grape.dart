import 'package:flutter/material.dart';

class Grape extends StatelessWidget {
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
            "GRAPE",
            textAlign: TextAlign.start,
          ),
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Image.asset('assets/images/dgrape.jpeg'),
                Text(
                  "Grapes are small, juicy, and sweet fruit that grow in clusters on vines.\n"
                  "Grapes are a good source of vitamins C and K, as well as dietary fiber and antioxidants. They are also low in calories, making them a healthy snack option. In addition, some studies suggest that grapes and grape products may have potential health benefits, such as reducing the risk of heart disease and certain types of cancer.\n"
                  "\n Types of diseases that can be identified in grapes \n"
                  "1.Grape___Black_rot\n"
                  "2.Grape___Esca_(Black_Measles)\n"
                  "3.Grape___Leaf_blight_(Isariopsis_Leaf_Spot)\n"
                  "4.Grape___healthy \n",
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
