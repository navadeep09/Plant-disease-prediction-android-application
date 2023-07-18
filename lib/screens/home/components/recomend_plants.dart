import 'package:flutter/material.dart';
import 'package:application/screens/details/description/apple.dart';
import 'package:application/screens/details/description/grape.dart';
import 'package:application/screens/details/description/potato.dart';
import '../../../constants.dart';
import '../../details/description/tomato.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecomendPlantCard(
            image: "assets/images/tomato.jpg",
            title: "Tomato",
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
            image: "assets/images/potaton.jpg",
            title: "Potato",
            //country: "Russia",
            //price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Potato(),
                ),
              );
            },
          ),
          RecomendPlantCard(
            image: "assets/images/applek.jpeg",
            title: "Apple",
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
            image: "assets/images/grape.jpeg",
            title: "Grape",
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
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key? key,
    required this.image,
    required this.title,
    //required this.country,
    //required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        // TextSpan(
                        //   text: "$country".toUpperCase(),
                        //   style: TextStyle(
                        //     color: kPrimaryColor.withOpacity(0.5),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  Spacer(),
                  // Text(
                  //   '\$$price',
                  //   style: Theme.of(context)
                  //       .textTheme
                  //       .button!
                  //       .copyWith(color: kPrimaryColor),
                  // )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
