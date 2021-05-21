import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// this will be the container of brands
class Court extends StatelessWidget {
  Court({@required this.name,this.onTap});
  final String name;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150,
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 140,
              height: 120,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assest/image/$name'),
                    fit: BoxFit.contain,
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
