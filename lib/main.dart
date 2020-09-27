import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import './screens/product_overview_screen.dart';
import './screens/product_detail_screen.dart';

import './providers/products.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (cotext) => Products(),
      child: MaterialApp(
        home: ProductOverviewScreen(),
        theme: ThemeData(
            primarySwatch: Colors.purple,
            accentColor: Colors.orange,
            fontFamily: 'Lato'),
        routes: {
          ProductDetailScreen.routeName: (context) => ProductDetailScreen()
        },
      ),
    );
  }
}
