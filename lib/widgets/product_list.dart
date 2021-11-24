import 'package:counterx/controllers/global_controller.dart';
import 'package:counterx/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final controler = Get.find<GlobalController>();
    return GetBuilder<GlobalController>(
      id: 'products',
      builder: (_) => ListView.builder(
        itemBuilder: (__, index) {
          final Product product = _.products[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text("USD ${product.price}"),
            trailing: IconButton(
              icon: Icon(Icons.favorite,
                  color: product.isFavorite ? Colors.pink : Colors.grey),
              onPressed: () {
                _.onFavorite(index, !product.isFavorite);
              },
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
