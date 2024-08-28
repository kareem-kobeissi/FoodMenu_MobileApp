import 'package:ecommerce/models/restaurant.dart';
import 'package:ecommerce/screens/detail/details.dart';
import 'package:ecommerce/screens/home/widget/food_item.dart';
import 'package:flutter/material.dart';

class FoodListView extends StatelessWidget {
  const FoodListView(this.selectedCategory, this.changeView,
      this.pageController, this.restaurant,
      {super.key});
  final int selectedCategory;
  final Function changeView;
  final PageController pageController;
  final Restaurant restaurant;
  @override
  Widget build(BuildContext context) {
    final category = restaurant.categories![selectedCategory];
    final newFoodList = restaurant.menu!
        .where((food) => food.categoryId == category.id)
        .toList();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => changeView(index),
        children: restaurant.categories!
            .map((e) => ListView.separated(
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DetailsPage(newFoodList[index]),
                      ),
                    ),
                    child: FoodItem(
                      newFoodList[index],
                    ),
                  ),
                  separatorBuilder: (_, index) => const SizedBox(
                    height: 15,
                  ),
                  itemCount: newFoodList.length,
                ))
            .toList(),
      ),
    );
  }
}
