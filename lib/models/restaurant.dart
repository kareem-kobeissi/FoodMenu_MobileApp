import './category.dart';
import './food.dart';

class Restaurant {
  String? name;
  String? waitTime;
  String? distance;
  String? label;
  String? logoUrl;
  String? description;
  num? rating;
  List<Food>? menu;
  List<Category>? categories;

  Restaurant({
    this.name,
    this.waitTime,
    this.distance,
    this.label,
    this.logoUrl,
    this.description,
    this.rating,
    this.menu,
    this.categories,
  });

  static Restaurant generateRestaurant() {
    return Restaurant(
      name: "McDonald's",
      waitTime: "20-30 min",
      distance: "2.5km",
      label: "Fast Food",
      logoUrl: "assets/images/logo.png",
      description:
          "McDonald's Corporation is an American fast food company, founded in 1940 as a restaurant operated by Richard and Maurice McDonald, in San Bernardino, California, United States.",
      rating: 4.7,
      menu: Food.generateFood(),
      categories: Category.generateCategories(),
    );
  }
}
