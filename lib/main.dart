import 'package:flutter/material.dart';
import './screens/products_overview_screen.dart';
import './screens/product_detail_screen.dart';
import "./providers/products.dart";
import "package:provider/provider.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      //create returns a new instance (THE SAME INSTANCE TO ALL THE CHILDREN)
      // of the provided class (aici Products)
      //only the widgets that are listening will be rebuilt
      create: (ctx) => Products(),
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: "Lato",
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
        },
      ),
    );
  }
}
