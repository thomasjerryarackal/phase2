import 'package:flutter/material.dart';
// in this file contain the details that need to enter the card as list
// made a class Logo to have in the item card in itembox.dart
class Logo{
  final String image,name;
  final int id;
  Logo({@required this.name,@required this.image,@required this.id});
}
// details neede to enter in the card
List<Logo> logoes =[
  Logo(
    id: 1,
    name:"addidas",
    image: "assest/image/dbrand.jpeg",
  ),
  Logo(
    id: 2,
    name:"nike",
    image: "assest/image/dbrand2.jpeg",
  ),
  Logo(
    id: 3,
    name:"ab",
    image: "assest/image/dbrand3.jpeg",
  ),
  Logo(
    id: 4,
    name:"gucci",
    image: "assest/image/dbrand4.png",
  ),
  Logo(
    id: 5,
    name:"mark",
    image: "assest/image/sbrand.png",
  ),
  Logo(
    id: 6,
    name:"jons",
    image: "assest/image/sbrand2.png",
  ),



];