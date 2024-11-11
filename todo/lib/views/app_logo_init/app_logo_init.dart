import 'package:flutter/material.dart';
import 'package:todo/utility/palette.dart';
import 'package:todo/views/home/home.dart';

class AppLogoInit extends StatefulWidget {
  const AppLogoInit({super.key});

  @override
  State<AppLogoInit> createState() => _AppLogoInitState();
}

class _AppLogoInitState extends State<AppLogoInit> {
  @override
  void initState() {
    startTimer();
    super.initState();
  }

  startTimer() {
    Future.delayed(
      const Duration(seconds: 5),
      () => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => const Home(),
          ),
        ),
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/app_logo.png',
              width: 100,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Everything Tasks',
              textAlign: TextAlign.center,
              overflow: TextOverflow.clip,
              style: TextStyle(
                color: kWhiteColor,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Schedule your week with ease',
              textAlign: TextAlign.center,
              overflow: TextOverflow.clip,
              style: TextStyle(
                color: kWhiteColor,
                fontWeight: FontWeight.normal,
                fontSize: 10.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
