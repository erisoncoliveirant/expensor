import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, this.child});
  final Widget? child;
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
 
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3), () {
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => widget.child!), (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Loading . . .",
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
