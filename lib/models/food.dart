class Food {
  String? name;
  String? description;
  String? imageUrl;
  num? price;
  num? quantity;
  String? waitTime;
  num? rating;
  String? calories;
  String? about;
  List<Map<String, String>>? ingredients;
  bool? highLighted;
  num? categoryId;

  Food({
    this.name,
    this.description,
    this.imageUrl,
    this.price,
    this.quantity,
    this.waitTime,
    this.rating,
    this.calories,
    this.about,
    this.ingredients,
    this.highLighted = false,
    this.categoryId,
  });

  static List<Food> generateFood() {
    return [
      Food(
        name: "Soup with Chicken",
        description: "Soup with Chicken",
        imageUrl: "assets/images/food1.png",
        price: 10.99,
        quantity: 10,
        waitTime: "20-30 min",
        rating: 4.5,
        calories: "500",
        about:
            "Soup with Chicken Soup with Chicken Soup with Chicken Soup with Chicken Soup with Chicken v Soup with Chicken Soup with Chicken Soup with Chicken",
        ingredients: [
          {'Chicken': 'https://picsum.photos/250?image=9'},
          {'Bread': 'https://picsum.photos/250?image=10'},
          {'Cheese': 'https://picsum.photos/250?image=11'},
          {'Tomato': 'https://picsum.photos/250?image=12'},
          {'Lettuce': 'https://picsum.photos/250?image=13'},
        ],
        highLighted: true,
        categoryId: 1,
      ),
      Food(
        name: "Soup with Chicken",
        description: "Soup with Chicken",
        imageUrl: "assets/images/food1.png",
        price: 10.99,
        quantity: 0,
        waitTime: "20-30 min",
        rating: 4.5,
        calories: "500",
        about: "Soup with Chicken",
        ingredients: [
          {'Chicken': 'https://picsum.photos/250?image=9'},
          {'Bread': 'https://picsum.photos/250?image=10'},
          {'Cheese': 'https://picsum.photos/250?image=11'},
          {'Tomato': 'https://picsum.photos/250?image=12'},
          {'Lettuce': 'https://picsum.photos/250?image=13'},
        ],
        highLighted: false,
        categoryId: 1,
      ),
      Food(
        name: "Soup with Chicken",
        description: "Soup with Chicken",
        imageUrl: "assets/images/food1.png",
        price: 10.99,
        quantity: 1,
        waitTime: "20-30 min",
        rating: 4.5,
        calories: "500",
        about: "Soup with Chicken",
        ingredients: [
          {'Chicken': 'https://picsum.photos/250?image=9'},
          {'Bread': 'https://picsum.photos/250?image=10'},
          {'Cheese': 'https://picsum.photos/250?image=11'},
          {'Tomato': 'https://picsum.photos/250?image=12'},
          {'Lettuce': 'https://picsum.photos/250?image=13'},
        ],
        highLighted: false,
        categoryId: 1,
      ),
      Food(
        name: "Chicken Burger",
        description: "Chicken Burger with cheese",
        imageUrl: "assets/images/food2.jpg",
        price: 10.99,
        quantity: 1,
        waitTime: "20-30 min",
        rating: 4.5,
        calories: "500",
        about: "Chicken Burger with cheese",
        ingredients: [
          {'Chicken': 'https://picsum.photos/250?image=9'},
          {'Bread': 'https://picsum.photos/250?image=10'},
          {'Cheese': 'https://picsum.photos/250?image=11'},
          {'Tomato': 'https://picsum.photos/250?image=12'},
          {'Lettuce': 'https://picsum.photos/250?image=13'},
        ],
        highLighted: false,
        categoryId: 2,
      ),
      Food(
        name: "Chicken Burger",
        description: "Chicken Burger with cheese",
        imageUrl: "assets/images/food2.jpg",
        price: 10.99,
        quantity: 1,
        waitTime: "20-30 min",
        rating: 4.5,
        calories: "500",
        about: "Chicken Burger with cheese",
        ingredients: [
          {'Chicken': 'https://picsum.photos/250?image=9'},
          {'Bread': 'https://picsum.photos/250?image=10'},
          {'Cheese': 'https://picsum.photos/250?image=11'},
          {'Tomato': 'https://picsum.photos/250?image=12'},
          {'Lettuce': 'https://picsum.photos/250?image=13'},
        ],
        highLighted: true,
        categoryId: 2,
      ),
      Food(
        name: "Chicken Burger",
        description: "Chicken Burger with cheese",
        imageUrl: "assets/images/food2.jpg",
        price: 101.99,
        quantity: 1,
        waitTime: "20-30 min",
        rating: 4.5,
        calories: "500",
        about: "Chicken Burger with cheese",
        ingredients: [
          {'Chicken': 'https://picsum.photos/250?image=9'},
          {'Bread': 'https://picsum.photos/250?image=10'},
          {'Cheese': 'https://picsum.photos/250?image=11'},
          {'Tomato': 'https://picsum.photos/250?image=12'},
          {'Lettuce': 'https://picsum.photos/250?image=13'},
        ],
        highLighted: false,
        categoryId: 2,
      ),
      Food(
        name: "Pizza",
        description: "Pizza with cheese",
        imageUrl: "assets/images/food3.jpg",
        price: 10.99,
        quantity: 1,
        waitTime: "20-30 min",
        rating: 4.5,
        calories: "500",
        about: "Pizza with cheese",
        ingredients: [
          {'Chicken': 'https://picsum.photos/250?image=9'},
          {'Bread': 'https://picsum.photos/250?image=10'},
          {'Cheese': 'https://picsum.photos/250?image=11'},
          {'Tomato': 'https://picsum.photos/250?image=12'},
          {'Lettuce': 'https://picsum.photos/250?image=13'},
        ],
        categoryId: 3,
      ),
      Food(
        name: "Orange Juice",
        description: "Drinks",
        imageUrl: "assets/images/food4.jpg",
        price: 10.99,
        quantity: 1,
        waitTime: "20-30 min",
        rating: 4.5,
        calories: "500",
        about: "Drinks",
        ingredients: [
          {'Orange': 'https://picsum.photos/250?image=14'},
          {'Lemon': 'https://picsum.photos/250?image=15'},
          {'Water': 'https://picsum.photos/250?image=16'},
        ],
        categoryId: 4,
      ),
      Food(
        name: "swess Roll",
        description: "swess Roll",
        imageUrl: "assets/images/food5.jpeg",
        price: 10.99,
        quantity: 1,
        waitTime: "20-30 min",
        rating: 4.5,
        calories: "500",
        about: "swess Roll",
        ingredients: [
          {'Chocolate': 'https://picsum.photos/250?image=9'},
          {'Cream': 'https://picsum.photos/250?image=10'},
          {'Sugar': 'https://picsum.photos/250?image=11'},
          {'Flour': 'https://picsum.photos/250?image=12'},
          {'Egg': 'https://picsum.photos/250?image=13'},
        ],
      )
    ];
  }
}
