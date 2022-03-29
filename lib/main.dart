import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_provider_share_data_to_other_screen/providers/foods.dart';
import 'package:flutter_provider_share_data_to_other_screen/screens/food_detail_screen.dart';
import 'package:flutter_provider_share_data_to_other_screen/screens/foods_overview_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => Foods(),
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Food Order',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange)
                  .copyWith(secondary: Colors.red),
            ),
            home: FoodOverview(),
            routes: {
              FoodDetailScreen.routeName: (ctx) => FoodDetailScreen(),
            }));
  }
}
