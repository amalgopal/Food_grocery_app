import 'package:flutter/material.dart';
import 'package:food_product_api_call/core/presentation/pages/fruit.dart';
import 'package:food_product_api_call/core/presentation/pages/home.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int myIntex=0;
  List<Widget>bottomList=[const ScreenHome(),
    const ScreenFruts()];
 
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomList[myIntex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green.shade100,
        onTap: (intex){
          setState(() {
            myIntex=intex;
          });
        },
          items: const[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
              ),BottomNavigationBarItem(icon: Icon(Icons.free_breakfast,),
              label: 'fruit')
              ]),
    );
  }
}
