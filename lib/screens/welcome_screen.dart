import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chat_app/components/big_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animationFirst;
  Animation animation;
  int myNumber;

  //@override

  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
      //upperBound: 100.0,
    );

    animationFirst =
        ColorTween(begin: Color.fromARGB(255, 178, 24, 209), end: Colors.blue)
            .animate(controller);
    animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);

    controller.forward();

    controller.addListener(() {
      setState(() {});
      myNumber = (controller.value * 100).round();
      print(myNumber);
    });
  }

  //@override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animationFirst.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 150,
            ),
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: animation.value * 50,
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ), 
                TextLiquidFill(
                  text: 'MY CHAT',
                  waveColor: Color.fromARGB(255, 255, 255, 255),
                  boxBackgroundColor: animationFirst.value,
                  textStyle: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                  ),
                  boxHeight: 100.0,
                  boxWidth: 250.0,
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            BigButton(
              colour: Color.fromARGB(255, 40, 187, 255),
              name: 'Log In',
              onTap: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            BigButton(
              colour: Color.fromARGB(255, 45, 101, 197),
              name: 'Register',
              onTap: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
            SizedBox(
              height: 200.0,
            ),
            Center(
              child: Text(
                '$myNumber%',
                style: TextStyle(
                  color: Colors.blue.shade900.withOpacity(controller.value),
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


