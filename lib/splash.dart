import 'package:flutter/material.dart';
import 'package:onlinegame/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).then((value) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const Navigation()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xffF7B84B);
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: Center(
        child: Text(
          'Online Game',
          style:
              themeData.textTheme.headlineMedium!.copyWith(color: primaryColor),
        ),
      ),
    );
  }
}
