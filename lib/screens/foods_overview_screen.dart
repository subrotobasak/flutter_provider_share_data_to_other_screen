import 'package:flutter/material.dart';
import 'package:flutter_provider_share_data_to_other_screen/widgets/foods_grid.dart';


class FoodOverview extends StatelessWidget {
  const FoodOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Order'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          )
        ],
      ),
      body: FoodsGrid(),
    );
  }
}
