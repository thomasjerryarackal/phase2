//this is the second page of the app
//this file contain design of product list

import 'package:flutter/material.dart';
import 'componets/body.dart';
import 'componets/constants.dart';

class ProductPage extends StatelessWidget {
  ProductPage({ this.names});
  final String names;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assest/image/logo.jpeg'),
                  )
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 30,
              width: 150,
              // myshoppingcart is the name of the app which i have given
              child: Text("MyShoppingCart",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    letterSpacing: 0.5
                ),
              ),
            )
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search,
              // By default our  icon color is white
              // present in the contants.dart file
              color: kTextColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart,
              // By default our  icon color is white
              color: kTextColor,
            ),
            onPressed: () {},
          ),
          SizedBox(width: kDefaultPaddin / 2)
        ],
      ),
      // the body fuction is written in another file-body.dart
      body: Body(name: '$names'),
    );

  }


}


