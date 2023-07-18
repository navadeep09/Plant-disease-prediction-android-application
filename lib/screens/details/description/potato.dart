import 'package:flutter/material.dart';

class Potato extends StatelessWidget {
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
            "POTATO",
            textAlign: TextAlign.start,
          ),
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Image.asset('assets/images/dpotato.jpeg'),
                Text(
                  "Potatoes are a good source of complex carbohydrates, vitamin C, potassium, and dietary fiber."
                  "They can be prepared in a variety of ways, including boiling, baking, frying, and roasting. Popular potato dishes include french fries, mashed potatoes, potato chips, and potato salad.\n"
                  "In addition to their culinary uses, potatoes have been used for centuries for their medicinal properties. They have been used to treat ailments such as diarrhea, inflammation, and constipation."
                  "However, it is important to note that some potato preparations, such as potato chips or fries, can be high in unhealthy fats and should be consumed in moderation as part of a balanced diet.\n"
                  "Types of diseases that can be identified in potato\n"
                  "1.Potato___Early_blight\n"
                  "2.Potato___Late_blight\n",
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
