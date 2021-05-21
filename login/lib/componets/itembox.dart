import 'package:flutter/material.dart';
import 'package:login/componets/Logo.dart';


//this the function that makes cards in the brand list
class ItemBox extends StatelessWidget {
  final Logo logoes;
  final Function press;

  const ItemBox({
    Key key,
    this.logoes,
    this.press,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.orange,
              ),
              child: Hero(
                tag: "${logoes.id}",
                child: Image.asset(logoes.image),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
