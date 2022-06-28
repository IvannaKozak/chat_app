import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin{
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

    animationFirst = ColorTween(begin: Color.fromARGB(255, 178, 24, 209), end: Colors.blue).animate(controller);
    animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);

    controller.forward();

    controller.addListener(() {
      setState(() {});
      myNumber = (controller.value*100).round();
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
            SizedBox(height: 150,),
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: animation.value * 50,
                  ),
                ),
                // DefaultTextStyle(
                //   style: TextStyle(
                //       color: Color.fromARGB(255, 82, 70, 70),
                //       fontSize: 45.0,
                //       fontWeight: FontWeight.w900,
                //     ),
                //   child: AnimatedTextKit(
                //     animatedTexts: [TypewriterAnimatedText('My Chat'),],
                //   ),
                // ),
                SizedBox(
                  width: 250.0,
                  child: TextLiquidFill(text: 'MY CHAT', 
                    waveColor: Color.fromARGB(255, 255, 255, 255), 
                    boxBackgroundColor: animationFirst.value,
                    textStyle: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,),
                    boxHeight: 100.0,
                    ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: Color.fromARGB(255, 40, 187, 255),
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Log In',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Color.fromARGB(255, 45, 101, 197),
                borderRadius: BorderRadius.circular(30.0),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RegistrationScreen.id);
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Register',
                  ),
                ),
              ),
            ),
            SizedBox(height: 200.0,),
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
