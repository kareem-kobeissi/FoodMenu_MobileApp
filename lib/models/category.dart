import 'package:flutter/material.dart';

class Category {
  num id;
  String title;
  Color? color;
  String imageUrl;
  bool isDark;

  Category({
    required this.id,
    required this.title,
    required this.imageUrl,
    this.color = Colors.orange,
    this.isDark = true,
  });

  static List<Category> generateCategories() {
    return [
      Category(
        id: 1,
        title: "Soups",
        imageUrl: "assets/images/food1.png",
        isDark: true,
      ),
      Category(
        id: 2,
        title: "Burgers",
        imageUrl: "assets/images/food2.jpg",
        color: Colors.brown,
        isDark: true,
      ),
      Category(
        id: 3,
        title: "Pizza",
        imageUrl: "assets/images/food3.jpg",
        color: Colors.red,
        isDark: true,
      ),
      Category(
        id: 4,
        title: "Drinks",
        imageUrl: "assets/images/food4.jpg",
        color: Colors.blue,
        isDark: true,
      ),
      Category(
        id: 5,
        title: "Desserts",
        imageUrl: "assets/images/food5.jpeg",
        color: Colors.purple,
        isDark: true,
      ),
      Category(
        id: 6,
        title: "Salads",
        imageUrl: "assets/images/food6.jpg",
        color: Colors.green,
        isDark: true,
      ),
      Category(
        id: 7,
        title: "Sushi",
        imageUrl: "assets/images/food7.jpg",
        color: Colors.yellow,
        isDark: false,
      ),
      Category(
        id: 8,
        title: "Pasta",
        imageUrl: "assets/images/food8.jpg",
        color: Colors.teal,
        isDark: true,
      ),
    ];
  }
}
