import 'package:cloth_cart/Models/cloth_items.dart';
import 'package:cloth_cart/Widgets/cloth_grid_item.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; //To adjust size to any screen
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.asset(
                    'assets/images/CartLogo.jpg',
                    height: size.height * 0.20,
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemCount: clothList.length,
                  itemBuilder: (context, index) => ClothGridItem(clothIndex: index),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
