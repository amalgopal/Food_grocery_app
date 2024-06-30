import 'package:flutter/material.dart';
import 'package:food_product_api_call/core/presentation/pages/home.dart';
import 'package:food_product_api_call/core/presentation/widgets/bottom_navigation.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    delaye(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/Organic Grocery.png'),
      ),
    );
  }

  Future<void>delaye(context)async{
   await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const BottomBar()));
  }
}