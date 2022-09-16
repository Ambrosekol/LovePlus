import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:loveplus/widgets/button.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({Key? key}) : super(key: key);

  List<Color> colors = [const Color(0xFF010440), const Color(0xFF2F1699)];

  @override
  Widget build(BuildContext context) {
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
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            ImageFiltered(
              imageFilter: ImageFilter.blur(
                  sigmaX: 70.0, sigmaY: 90.0, tileMode: TileMode.decal),
              child: Image.asset(
                'assets/Fadedcolor.png',
                height: 150,
              ),
            ),
            // ImageFiltered(
            //   imageFilter: ImageFilter.blur(sigmaX: 50.0, sigmaY: 100.0),
            //   child: Container(
            //     height: MediaQuery.of(context).size.height * 0.3,
            //     width: MediaQuery.of(context).size.width * 0.4,
            //     decoration: const BoxDecoration(
            //       image: DecorationImage(
            //           image: AssetImage('assets/project_logo.png'),
            //           fit: BoxFit.fill,
            //           alignment: Alignment.center),
            //       // backgroundBlendMode: BlendMode.exclusion,
            //       color: Color.fromARGB(255, 111, 26, 145),
            //     ),
            //   ),
            // ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.2),
                  child: const Image(
                    image: AssetImage('assets/project_logo.png'),
                    height: 80.0,
                  ),
                ),
                const SizedBox(height: 30.0),
                // ElevatedButton(
                //   style: ButtonStyle(
                //       backgroundColor: MaterialStateProperty.resolveWith(
                //         (states) => const Color(0xFF705EE8),
                //       ),
                //       fixedSize: MaterialStateProperty.resolveWith(
                //           (states) => const Size.fromHeight(50.0)),
                //       shape: MaterialStateProperty.resolveWith(
                //         (states) => RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(60)),
                //       )),
                //   onPressed: () {},
                //   child: const Text(
                //     'Sign Up',
                //     style: TextStyle(color: Colors.white, fontSize: 20),
                //   ),
                // )
                NormalButton(
                  buttonText: 'Sign Up',
                  buttonWidth: MediaQuery.of(context).size.width / 3,
                  textColor: Colors.white,
                  prefixWidget: Container(),
                  onTapFunction: () =>
                      Navigator.pushNamed(context, 'signUpScreen'),
                  containsPrefixWidget: false,
                  buttonColor: const Color(0xFF705EE8),
                ),
                const SizedBox(height: 20.0),
                NormalButton(
                  buttonText: 'Sign In',
                  buttonWidth: MediaQuery.of(context).size.width / 3,
                  textColor: const Color(0xFF705EE8),
                  prefixWidget: Container(),
                  onTapFunction: () =>
                      Navigator.pushNamed(context, 'loginScreen'),
                  containsPrefixWidget: false,
                  buttonColor: Colors.white,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: LoadingAnimationWidget.flickr(
                    leftDotColor: const Color(0xFF010440),
                    rightDotColor: const Color(0xFFEA3799),
                    size: 50,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
