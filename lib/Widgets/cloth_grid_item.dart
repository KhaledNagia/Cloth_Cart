import 'package:cloth_cart/Models/cloth_items.dart';
import 'package:flutter/material.dart';

class ClothGridItem extends StatefulWidget {
  final int clothIndex;
  const ClothGridItem({super.key, required this.clothIndex});

  @override
  State<ClothGridItem> createState() => _ClothGridItemState();
}

class _ClothGridItemState extends State<ClothGridItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  clothList[widget.clothIndex].imgUrl,
                  height: 100,
                  width: 130,
                  fit: BoxFit.cover,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        clothList[widget.clothIndex] = clothList[widget.clothIndex]
                            .copyWith(isFavourite: !clothList[widget.clothIndex].isFavourite);
                      }); //to switch between bool isFavourite
                    },
                    child: Icon(
                      clothList[widget.clothIndex].isFavourite ? Icons.favorite : Icons.favorite_border,
                      color: Theme.of(context).primaryColor,
                    ), //to change favourite icon
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              clothList[widget.clothIndex].name,
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            SizedBox(height: 10),
            Text(
              '\$ ${clothList[widget.clothIndex].price}',
              style: TextStyle(color: Theme.of(context).primaryColor),
            )
          ],
        ),
      ),
    );
  }
}
