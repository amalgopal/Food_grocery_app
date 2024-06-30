import 'package:flutter/material.dart';

class ScreenFruts extends StatelessWidget {
  const ScreenFruts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context,intex){
        return Stack();
      }),
    );
  }
}