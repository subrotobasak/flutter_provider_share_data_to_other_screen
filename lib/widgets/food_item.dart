import 'package:flutter/material.dart';
import 'package:flutter_provider_share_data_to_other_screen/screens/food_detail_screen.dart';

class FoodIteam extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  FoodIteam(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GridTile(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .pushNamed(FoodDetailScreen.routeName, arguments: id);
              },
              child: Image.asset(
                imageUrl,
                fit: BoxFit.fitHeight,
              ),
            ),
            footer: GridTileBar(
              backgroundColor: Colors.black.withOpacity(0.5),
              leading: IconButton(
                  icon: Icon(
                    Icons.favorite,
                  ),
                  onPressed: () {},
                  color: Theme.of(context).secondaryHeaderColor),
              title: Text(
                title,
                textAlign: TextAlign.center,
              ),
              trailing: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  color:
                  Theme.of(context).secondaryHeaderColor;
                },
              ),
            )));
  }
}
