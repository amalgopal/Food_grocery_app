import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    
      width: 200,
      height: 150,
      decoration: BoxDecoration(
        
        image:const DecorationImage(image: AssetImage('assets/Organic Grocery.png'),fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(9)
      ),
      child:const Center(
        child: Column(
          children: [
            Text('data')
          ],
        ),
      ),

    );
  }
}