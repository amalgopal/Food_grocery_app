import 'package:flutter/material.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            fillColor: Colors.white,
            hintText: 'Grocery',
            hintStyle: TextStyle(color: Colors.green.shade300),
            filled: true,
            border:const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)),
            )),
      ),
    );
  }
}
