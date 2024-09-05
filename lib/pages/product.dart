// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductPage extends StatelessWidget {
  ProductPage({super.key});

  List<Product> myproductlist = [
    Product(name: 'Sepatu Sekolah Hitam', price: '85,000', imageUrl: 'images/sepatu.jpeg'),
    Product(name: 'Dasi SMP', price: '5,000', imageUrl: 'images/dasi.jpeg'),
    Product(name: 'Paket 1 Seragam Sekolah', price: '54,000', imageUrl: 'images/paket_1_seragam_sekolah.jpeg'),
    Product(name: 'Paket 2 Seragam Sekolah', price: '57,000', imageUrl: 'images/paket_2_seragam_sekolah.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Product List',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            actions: [
              Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              Padding(padding: EdgeInsets.only(right: 10))
            ],
            backgroundColor: Colors.blue,
          ),
          body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 3 / 4),
            itemCount: myproductlist.length,
            itemBuilder: (context, index) {
              return ProductItem(product: myproductlist[index]);
            },
          ),
        ));
  }
}

class ProductItem extends StatelessWidget {
  final Product product;

  ProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.asset(
              '${product.imageUrl}',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              textAlign: TextAlign.center,
              '${product.name}', 
              style: TextStyle(
                fontWeight: FontWeight.bold, 
                color: Colors.black),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              textAlign: TextAlign.center,
              'Rp ${product.price}', 
              style: TextStyle(
                fontWeight: FontWeight.bold, 
                color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}

class Product {
  late String? name;
  late String? price;
  late String? imageUrl;

  Product({this.name, this.price, this.imageUrl});
}
