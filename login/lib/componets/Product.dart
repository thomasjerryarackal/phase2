import 'package:flutter/material.dart';
// in this file contain the details that need to enter the card
// made a class product to have in the item card in itemcard.dart
class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}
// details neede to enter in the card
List<Product> products = [
  Product(
      id: 1,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_1.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Belt Bag",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/images/bag_2.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Hang Top",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/bag_3.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Old Fashion",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/bag_4.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_5.png",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Office Code",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_6.png",
    color: Color(0xFFAEAEAE),
  ),
  Product(
    id: 7,
    title: "Runner",
    price: 140,
    size: 5-12,
    description: dummyText,
    image: "assest/image/shoe2.png",
    color: Color(0xFFAEAEAE),
  ),
  Product(
    id: 8,
    title: "Runner",
    price: 240,
    size: 5-12,
    description: dummyText,
    image: "assest/image/shoe3.png",
    color: Color(0xFFFB7883)
  ),
  Product(
      id: 9,
      title: "Summer Wear",
      price: 540,
      size: 38,
      description: dummyText,
      image: "assest/image/women.jpeg",
    color: Color(0xFFAEAEAE),
  ),
  Product(
      id: 10,
      title: "winter wear",
      price: 740,
      size: 42,
      description: dummyText,
      image: "assest/image/men.jpeg",
    color: Colors.white,
  ),
  Product(
    id: 11,
    title: "causal wear",
    price: 570,
    size: 42,
    description: dummyText,
    image: "assets/images/ll.jpeg",
    color: Colors.white,
  ),
  Product(
    id: 12,
    title: "causal wear",
    price: 640,
    size: 42,
    description: dummyText,
    image: "assets/images/soo.jpeg",
    color: Colors.white,
  ),

];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
