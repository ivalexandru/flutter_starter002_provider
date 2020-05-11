import 'package:flutter/material.dart';
import '../widgets/product_item.dart';
import "package:provider/provider.dart";
import '../providers/products.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //set up listener to fetch data
    //what type of data you wanna listen to? <Products>
    final productsData = Provider.of<Products>(context); // the whole obj
    //de unde .items? ai setat getter in /providers/products.dart
    final products = productsData.items; // just the list from the obj

    return GridView.builder(
      //if const => this part does not rebuild when the main method rebuilds
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      itemBuilder: (ctx, i) => ProductItem(
        products[i].id,
        products[i].title,
        products[i].imageUrl,
      ),
      //how the grid should be structured:
      //crossAxisCount = nr de coloane
      //crossAxisSpacing = space between columns
      //   3 /  2 = mai inalt decat e lat
      // mainAxisSpacing: space between the rows
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
    );
  }
}
