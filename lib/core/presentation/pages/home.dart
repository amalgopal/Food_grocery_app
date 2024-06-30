import 'package:flutter/material.dart';
import 'package:food_product_api_call/core/presentation/widgets/container_widget.dart';
import 'package:food_product_api_call/core/presentation/widgets/search_bar.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.green.shade100,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            ListTile(
              title: Text(
                'Good day',
                style: TextStyle(
                  color: Colors.green.shade900,
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                ),
              ),
              trailing: MaterialButton(
                onPressed: () {},
                color: Colors.white,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                child: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.green,
                ),
              ),
            ),
            const HomeSearchBar(),
            SizedBox(
              height: screenSize.height* 0.4, // or any fixed height
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.all(15),
                    child: ContainerWidget(),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('dfedrre'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Add an itemCount parameter
                scrollDirection: Axis.horizontal, // Change to vertical to avoid conflicts
                itemBuilder: (context, index) {
                  return Container(

                    margin: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(20),
                      child: Text("List item content"),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
