import 'package:flutter/material.dart';
// this will be the container of now trending
class PriceCourt extends StatelessWidget {

  PriceCourt({@required this.ima,this.price,this.name,this.onTap});
  final String ima;
  final String price;
  final String name;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 200,
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.white
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 150,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assest/image/$ima'),
                  )
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('\$$price', style: TextStyle(
                      fontSize: 30,
                      color: Colors.purple
                  ),),
                  IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.purple,
                    ),
                  )
                ],
              ),
            ),
            Center(
              child: Text('$name', style: TextStyle(
                  fontSize: 20
              ),),
            ),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}
