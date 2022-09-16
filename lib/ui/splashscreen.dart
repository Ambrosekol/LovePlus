import 'package:flutter/material.dart';

import '../model/usermodel.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  List<Color> colors = [const Color(0xFF010440), const Color(0xFF2F1699)];

  List<SplashScreenSlider> splashScreenList = [
    SplashScreenSlider(
        message:
            'Make bond in relationship Don\'t wait anymore, Find out your soul mate Now! ',
        name: 'Shade'),
    SplashScreenSlider(message: 'this is me'),
    SplashScreenSlider(
        message:
            'I hate Cheese Make bond in relationship Don\'t wait anymore, Find')
  ];

  @override
  Widget build(BuildContext context) {
    // double nameWidth = (MediaQuery.of(context).size.width - 60) - 120;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 40),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            // stops: const [0.2, 0.4],
          ),
        ),
        // alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(
                  30, 50, 30, MediaQuery.of(context).size.height / 10),
              child: const Align(
                alignment: Alignment.topRight,
                child: Image(
                  image: AssetImage('assets/project_logo.png'),
                  height: 25.0,
                ),
              ),
            ),
            //CENTER IMAGE HERE

            Container(
              height: 300,
              width: 200,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: const Color(0xFFE6E2FF),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                  // children: [
                  //   ListView.builder(
                  //     scrollDirection: Axis.horizontal,
                  //     itemCount: splashScreenList.length,
                  //     itemBuilder: (context, index) {
                  //       return welcomeMessage(index);
                  //     },
                  //   ),
                  // ],
                  ),
            ),
          ],
        ),
      ),
    );
  }

  Widget welcomeMessage(int index) {
    return Container(
      height: 300,
      width: 200,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('${splashScreenList[index].name}'),
          Text(splashScreenList[index].message)
        ],
      ),
    );
  }
}
