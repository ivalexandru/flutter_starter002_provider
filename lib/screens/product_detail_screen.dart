import "package:flutter/material.dart";

class ProductDetailScreen extends StatelessWidget {
//retrieve arg from the routing 'action':
  static const routeName = "./product-detail";
  @override
  Widget build(BuildContext context) {
    //extract the id passed from product_item.dart
    final productId = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text("title"),
      ),
    );
  }
}
