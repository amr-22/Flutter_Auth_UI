import 'package:auth_ui/sign_in/ui/signIn.dart';
import 'package:auth_ui/sign_up/ui/signUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 90,
                  ),
                  Text(
                    "Welcome To FAU",
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  SvgPicture.asset("icons/chat.svg"),
                  SizedBox(
                    height: 35,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple[800],
                      padding:
                          EdgeInsets.symmetric(horizontal: 79, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignIn(),
                      ),
                    ),
                    child: Text(
                      "sign in",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple[100],
                      padding:
                          EdgeInsets.symmetric(horizontal: 79, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUp(),
                      ),
                    ),
                    child: Text(
                      "sign up",
                      style: TextStyle(color: Colors.deepPurple[800]),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: -100,
              left: -50,
              child: Image.asset(
                'images/main_top.png',
              ),
            ),
            Positioned(
                top: h * .85,
                height: h * .2,
                left: -20,
                child: Image.asset("images/main_bottom.png"))
          ],
        ),
      ),
    );
  }
}
