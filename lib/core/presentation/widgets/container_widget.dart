import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize=MediaQuery.of(context).size;
    return Container(
    
      width:screenSize.width<460? screenSize.width*0.6:screenSize.width*0.40,
      
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