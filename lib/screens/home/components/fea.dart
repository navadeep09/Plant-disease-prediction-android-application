import 'package:flutter/material.dart';
import 'package:application/screens/details/description/apple.dart';
import 'package:application/screens/details/description/grape.dart';
import 'package:application/screens/details/description/potato.dart';
import '../../../constants.dart';
import '../../details/description/tomato.dart';

class RecomendsPlant extends StatelessWidget {
  const RecomendsPlant({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          Container(
              child: Row(
            children: [
              RecomendPlantCard(
                image: "assets/images/dtomato.jpeg",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Tomato(),
                    ),
                  );
                },
              ),
              RecomendPlantCard(
                image: "assets/images/dpotato.jpeg",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Potato(),
                    ),
                  );
                },
              ),
            ],
          )),
          Container(
              child: Row(
            children: [
              RecomendPlantCard(
                image: "assets/images/dapple.jpeg",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Apple(),
                    ),
                  );
                },
              ),
              RecomendPlantCard(
                image: "assets/images/dgrape.jpeg",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Grape(),
                    ),
                  );
                },
              ),
            ],
          )),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);

  final String image;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.4,
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
