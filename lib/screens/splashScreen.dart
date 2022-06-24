import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  pushToHome() async {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushNamed('Login');
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pushToHome();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SizedBox(
          height: size.height / 6,
          width: size.height / 6,
          child: Image.asset("assets/images/paytmSplash2.jpg"),
        ),
      ),
    );
  }
}
