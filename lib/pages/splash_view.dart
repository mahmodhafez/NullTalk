import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';
import 'login_view.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => LoginView()),
      );
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(kLogo, width: 150),
            SizedBox(height: 20),
            Text(
              'NullTalk',
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
