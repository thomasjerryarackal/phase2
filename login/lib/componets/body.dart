//this file is the part of productpage
//this contains things below the navigation bar of product list
import 'package:flutter/material.dart';

import 'Product.dart';
import 'categories.dart';
import 'constants.dart';
import 'itemcard.dart';

class Body extends StatelessWidget {
  Body({@required this.name});
  // this a parameter for the page to name the body in the page
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin,vertical:5.0 ),
          child: Text(
            '$name',
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        // this function to call the different category in the productpage.dart
        // present in the folder-componets nad file-categories.dart
        Categories(),
        // this the code to show the listed items as grid in the page
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
              // product is the class in product.dart
              //its the class to make the card in the list
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  // its in the constant.dart
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.75,
                ),
                //itemcard is the fucntion
                itemBuilder: (context, index) => ItemCard(
                  product: products[index],
                  press: () {},
                )),
          ),
        ),
      ],
    );
  }
}