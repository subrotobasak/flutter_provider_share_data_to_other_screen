import 'package:flutter/material.dart';
import 'package:flutter_provider_share_data_to_other_screen/providers/foods.dart';
import 'package:flutter_provider_share_data_to_other_screen/widgets/food_item.dart';
import 'package:provider/provider.dart';


class FoodsGrid extends StatelessWidget {
  const FoodsGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Foods>(context);
    final products = productsData.items;
    return GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (cntx, i) =>
            FoodIteam(products[i].id, products[i].title, products[i].imageUrl));
  }
}
