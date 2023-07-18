import 'package:flutter/material.dart';

class Straberry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset('assets/images/tomato.jpg'),
              Text(
                ".\n"
                "Tomato___Bacterial_spot\n"
                'Tomato___Early_blight,Tomato___Late_blight\n'
                "Tomato___Leaf_Mold\n"
                "Tomato___Septoria_leaf_spot\n"
                "Tomato___Spider_mites Two-spotted_spider_mite\n"
                "Tomato___Target_Spot\n"
                "Tomato___Tomato_Yellow_Leaf_Curl_Virus\n"
                "Tomato___Tomato_mosaic_virus\n"
                "Tomato___healthy\n",
                style: TextStyle(fontSize: 20.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
