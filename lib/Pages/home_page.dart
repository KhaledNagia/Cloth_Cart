import 'package:cloth_cart/Pages/my_favourite.dart';
import 'package:cloth_cart/Pages/my_home.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  void onItemTapped(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }

  List<Widget> bodyoptions = [
    MyHomePage(),
    MyFavouritePage(),
    Center(child: Text("My Account")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cloth Cart'),
      ),
      drawer: Drawer(),
      body: bodyoptions[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favourites'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
        currentIndex: selectedIndex, //The bar contains index 0,1,2 we declare it above by 0 (selctedindex)
        onTap: onItemTapped, //call no. of index when tapped we declare it above
      ),
    );
  }
}
