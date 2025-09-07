import 'package:cloth_cart/Models/cloth_items.dart';
import 'package:flutter/material.dart';

class MyFavouritePage extends StatefulWidget {
  const MyFavouritePage({super.key});

  @override
  State<MyFavouritePage> createState() => _MyFavouritePageState();
}

class _MyFavouritePageState extends State<MyFavouritePage> {
  @override
  Widget build(BuildContext context) {
    //condition to show favourite clothes
    final favouriteCloth = clothList.where((element) => element.isFavourite == true).toList();
    if (favouriteCloth.isEmpty) {
      return Center(
        child: Text(
          'No Favourites',
          style: TextStyle(fontSize: 50),
        ),
      );
    }
    return Padding(
      padding: EdgeInsets.all(16),
      child: ListView.builder(
        itemCount: favouriteCloth.length,
        itemBuilder: (context, index) => Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                Image.asset(
                  favouriteCloth[index].imgUrl,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(favouriteCloth[index].name),
                      Text('\$ ${favouriteCloth[index].price}'),
                    ],
                  ),
                ),
                SizedBox(width: 8),
                IconButton(
                    onPressed: () {
                      final item = favouriteCloth[index];
                      int originalIndex = clothList.indexOf(item);
                      setState(() {
                        clothList[originalIndex] = clothList[originalIndex].copyWith(isFavourite: false);
                        favouriteCloth.remove(item);
                      });
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.deepOrange,
                      size: 30,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
