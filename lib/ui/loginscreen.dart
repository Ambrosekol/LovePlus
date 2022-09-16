import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:loveplus/widgets/button.dart';
import 'package:loveplus/widgets/textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();

  TextEditingController passWordController = TextEditingController();

  List<Color> colors = [const Color(0xFF010440), const Color(0xFF2F1699)];

  bool isPasswordHidden = true;

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
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 50.0, sigmaY: 100.0),
              child: ListView(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        30, 50, 30, MediaQuery.of(context).size.height / 10),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () => Navigator.pop(context),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.0),
                                border: Border.all(
                                  style: BorderStyle.solid,
                                  color: Colors.white,
                                ),
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.arrow_back_rounded,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                              ),
                            ),
                          ),
                          const Image(
                            image: AssetImage('assets/project_logo.png'),
                            height: 25.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Amaranth'),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 25),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: CreatedInputField(
                        textController: usernameController,
                        prefixIcon: const Icon(Icons.person),
                        hinttext: 'John Smith',
                        labeltext: 'Username',
                        textInputType: TextInputType.name,
                        hideUserInput: false,
                        onTap: () {},
                      )),
                  const SizedBox(height: 20.0),
                  //
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: CreatedInputField(
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: InkWell(
                            onTap: () => hidePassword(),
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0xFF2F1699),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              width: 10.0,
                              alignment: Alignment.center,
                              child: isPasswordHidden
                                  ? const Icon(
                                      Icons.visibility,
                                      color: Colors.white,
                                    )
                                  : const Icon(
                                      Icons.visibility_off,
                                      color: Colors.white,
                                    ),
                            ),
                          ),
                        ),
                        textController: passWordController,
                        prefixIcon: const Icon(Icons.key),
                        hinttext: 'Password ',
                        labeltext: 'Password',
                        textInputType: TextInputType.visiblePassword,
                        hideUserInput: isPasswordHidden,
                        onTap: () {},
                      )),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0, top: 10.0),
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          onTap: () {},
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'Amaranth'),
                          ),
                        )),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 25),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width / 4),
                    child: NormalButton(
                        buttonText: 'Login',
                        textColor: Colors.white,
                        // buttonWidth: MediaQuery.of(context).size.width / 7,
                        prefixWidget: Container(),
                        onTapFunction: () => demoLoading(context),
                        containsPrefixWidget: false,
                        buttonColor: const Color(0xFF6F5DE6)),
                  ),
                  const SizedBox(height: 5.0),
                  Center(
                    child: InkWell(
                      onTap: () {}, //FINGERPRINT FUNCTION
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Login with Fingerprint',
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'Amaranth'),
                          ),
                          // SizedBox(width: 2.0),
                          Image(
                            image: AssetImage('assets/fingerprint_image.png'),
                            height: 50.0,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  Center(
                    child: InkWell(
                      onTap: () => Navigator.popAndPushNamed(
                          context, 'signUpScreen'), //SIGN UP FUNCTION
                      child: const Text(
                        'Dont Have An Account? Sign up',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'Amaranth'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  const Center(
                    child: Text(
                      'By continuing, you agree to our',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'Amaranth'),
                    ),
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {}, // Open Browser
                          child: const Text(
                            'Terms of Service, ',
                            style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                                fontFamily: 'Amaranth'),
                          ),
                        ),
                        InkWell(
                          onTap: () {}, // Open Browser
                          child: const Text(
                            'Privacy Policy, ',
                            style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                                fontFamily: 'Amaranth'),
                          ),
                        ),
                        InkWell(
                          onTap: () {}, // Open Browser
                          child: const Text(
                            'Content Policy, ',
                            style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                                fontFamily: 'Amaranth'),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  hidePassword() {
    setState(() {
      isPasswordHidden = !isPasswordHidden;
    });
  }

  demoLoading(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
            backgroundColor: const Color(0xFF010440),
            title: const Center(
              child: Text(
                'Please wait..',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontFamily: 'Amaranth'),
              ),
            ),
            content: SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width / 3,
              child: Center(
                child: LoadingAnimationWidget.flickr(
                  leftDotColor: const Color(0xFF010440),
                  rightDotColor: const Color(0xFFEA3799),
                  size: 50,
                ),
              ),
            )));
  }
}
