//this file is the part of brands page


import 'package:flutter/material.dart';
import 'package:login/componets/Logo.dart';
import 'package:login/componets/constants.dart';
import 'package:login/componets/itembox.dart';


class Lists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // this the code to show the listed items as grid in the page
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
              // product is the class in product.dart
              //its the class to make the card in the list
                itemCount: logoes.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  // its in the constant.dart
                  mainAxisSpacing: nDefaultPaddin,
                  crossAxisSpacing: nDefaultPaddin,
                  childAspectRatio: 0.75,
                ),
                //itembox is the fucntion
                itemBuilder: (context, index) => ItemBox(
                  logoes: logoes[index],
                  press: () {
                    Navigator.pushNamed(context, '/ProductPage');
                  },
                )),
          ),
        ),
      ],
    );
  }
}
