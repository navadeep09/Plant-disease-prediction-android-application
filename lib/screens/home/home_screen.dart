import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:application/screens/home/components/body.dart';
import 'package:application/screens/home/components/nav-drawer.dart';

import '../../camm/camm.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: buildAppBar(context),
      body: Body(),
      // bottomNavigationBar: MyBottomNavBar(),
    );
  }

  _getcam() async {
    final cameras = await availableCameras();
    final firstCamera = cameras.first;
    // Get a specific camera from the list of available cameras.
    return firstCamera;
  }

  AppBar buildAppBar(context) {
    var cam = _getcam();
    return AppBar(
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/scan.svg",
            // height: SizeConfig.defaultSize * 2.4, //24
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TakePictureScreen(
                  camera: cam,
                ),
              ),
            );
          },
        ),
        Center(
          child: Text(
            "Scan  ",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        // SizedBox(width: SizeConfig.defaultSize),
      ],
      backgroundColor: Colors.transparent,
    );
  }
}
