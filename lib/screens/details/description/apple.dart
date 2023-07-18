import 'package:flutter/material.dart';

class Apple extends StatelessWidget {
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
            "APPLE",
            textAlign: TextAlign.start,
          ),
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Image.asset('assets/images/dapple.jpeg'),
                Text(
                  "Apples are a good source of fiber and vitamin C, as well as antioxidants. \n They are low in calories and are a healthy snack option. \n In addition, some studies suggest that apples may have potential health benefits, such as reducing the risk of heart disease, stroke, and certain types of cancer..\n"
                  "Overall, apples are a delicious and nutritious fruit that can be enjoyed in many different ways. They are a great addition to a healthy diet and offer many potential health benefits."
                  "\n Types of diseases that can be in apple\n"
                  "1.Apple___Apple_scab\n"
                  "2.Apple___Black_rot \n"
                  "3.Apple___Cedar_apple_rust \n"
                  "4.Apple___healthy \n",
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
