import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../widgets/button.dart';
import '../widgets/textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreen();
}

class _SignUpScreen extends State<SignUpScreen> {
  List<Color> colors = [const Color(0xFF010440), const Color(0xFF2F1699)];

  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController passWordController = TextEditingController();
  TextEditingController secondPassWordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController referralCodeController = TextEditingController();

  bool isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    double nameWidth = (MediaQuery.of(context).size.width - 60) - 120;
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
            ListView(
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
                    'Sign Up',
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
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: nameWidth,
                          child: CreatedInputField(
                            textController: nameController,
                            prefixIcon: const Icon(Icons.person),
                            hinttext: 'John Smith',
                            labeltext: 'Full Name',
                            textInputType: TextInputType.name,
                            hideUserInput: false,
                          ),
                        ),
                        const SizedBox(width: 5.0),
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Colors.white, style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: InkWell(
                            onTap: () => null,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Icon(Icons.arrow_drop_down_rounded,
                                    color: Color(0xFF2F1699), size: 45.0),
                                Padding(
                                  padding: EdgeInsets.only(right: 18.0),
                                  child: Text(
                                    'Age',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontFamily: 'Amaranth',
                                      color: Color(0xFF2F1699),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ]),
                ),
                const SizedBox(height: 20.0),
                //
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: nameWidth - 80,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Colors.white, style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: InkWell(
                            onTap: () => null,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Icon(Icons.arrow_drop_down_rounded,
                                    color: Color(0xFF2F1699), size: 45.0),
                                Padding(
                                  padding: EdgeInsets.only(right: 18.0),
                                  child: Text(
                                    'Gender',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontFamily: 'Amaranth',
                                      color: Color(0xFF2F1699),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),

                        Container(
                          alignment: Alignment.centerLeft,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Colors.white, style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: InkWell(
                            onTap: () => null,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Icon(Icons.arrow_drop_down_rounded,
                                    color: Color(0xFF2F1699), size: 45.0),
                                Padding(
                                  padding: EdgeInsets.only(right: 18.0),
                                  child: Text(
                                    'State',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontFamily: 'Amaranth',
                                      color: Color(0xFF2F1699),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        // Container(
                        //   alignment: Alignment.centerLeft,
                        //   width: MediaQuery.of(context).size.width * 0.37,
                        //   decoration: BoxDecoration(
                        //     color: Colors.white,
                        //     border: Border.all(
                        //         color: Colors.white, style: BorderStyle.solid),
                        //     borderRadius: BorderRadius.circular(10),
                        //   ),
                        //   child: InkWell(
                        //     onTap: () => null,
                        //     child: Row(
                        //       mainAxisAlignment: MainAxisAlignment.start,
                        //       children: const [
                        //         Icon(Icons.arrow_drop_down_rounded,
                        //             color: Color(0xFF2F1699), size: 45.0),
                        //         Padding(
                        //           padding: EdgeInsets.only(right: 18.0),
                        //           child: Text(
                        //             'State of Origin',
                        //             style: TextStyle(
                        //               fontSize: 18.0,
                        //               fontFamily: 'Amaranth',
                        //               color: Color(0xFF2F1699),
                        //             ),
                        //           ),
                        //         )
                        //       ],
                        //     ),
                        //   ),
                        // ),
                      ]),
                ),
                //////
                const SizedBox(height: 20.0),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: CreatedInputField(
                      textController: emailController,
                      prefixIcon: const Icon(Icons.email),
                      hinttext: 'JohnSmith@gmail.com',
                      labeltext: 'Email Address',
                      textInputType: TextInputType.emailAddress,
                      hideUserInput: false,
                      onTap: () {},
                    )),
                const SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: IntlPhoneField(
                    pickerDialogStyle: PickerDialogStyle(
                        countryCodeStyle: const TextStyle(
                            color: Color(0xFF2F1699), fontFamily: 'Amaranth'),
                        countryNameStyle: const TextStyle(
                            color: Color(0xFF2F1699), fontFamily: 'Amaranth')),
                    dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    initialCountryCode: 'NG',
                    controller: phoneNumberController,
                    cursorColor: const Color(0xFF2F1699),
                    style: const TextStyle(color: Color(0xFF2F1699)),
                  ),
                ),
                const SizedBox(height: 20.0),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: CreatedInputField(
                      textController: referralCodeController,
                      prefixIcon: const Icon(Icons.numbers_rounded),
                      hinttext: '123456',
                      labeltext: 'Referral Code (optional)',
                      textInputType: TextInputType.number,
                      hideUserInput: false,
                      onTap: () {},
                    )),
                const SizedBox(height: 20.0),
                //PASSWORD FIELD BELOW
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
                const SizedBox(height: 20.0),
                //RETYPE PASSWORD
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
                      textController: secondPassWordController,
                      prefixIcon: const Icon(Icons.key),
                      hinttext: 'Confirm Password ',
                      labeltext: 'Confirm Password',
                      textInputType: TextInputType.visiblePassword,
                      hideUserInput: isPasswordHidden,
                      onTap: () {},
                    )),

                SizedBox(height: MediaQuery.of(context).size.height / 25),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 4),
                  child: NormalButton(
                      buttonText: 'Sign Up',
                      textColor: Colors.white,
                      // buttonWidth: MediaQuery.of(context).size.width / 7,
                      prefixWidget: Container(),
                      onTapFunction: () => demoLoading(context),
                      containsPrefixWidget: false,
                      buttonColor: const Color(0xFF6F5DE6)),
                ),

                const SizedBox(height: 30.0),
                Center(
                  child: InkWell(
                    onTap: () => Navigator.popAndPushNamed(
                        context, 'loginScreen'), //SIGN UP FUNCTION
                    child: const Text(
                      'Already Have An Account? Sign In',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'Amaranth'),
                    ),
                  ),
                ),
                const SizedBox(height: 30.0),
                const Center(
                  child: Text(
                    'By continuing, you agree to our',
                    style:
                        TextStyle(color: Colors.white, fontFamily: 'Amaranth'),
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
