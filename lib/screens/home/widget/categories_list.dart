import 'package:ecommerce/models/category.dart';
import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList(
      this.newCategoryIndex, this.categories, this.changeCategory,
      {super.key});
  final List<Category> categories;
  final int newCategoryIndex;
  final Function changeCategory;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => changeCategory(index),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: categories[index].color!.withOpacity(0.4),
            ),
            child: Row(
              children: [
                Text(
                  categories[index].title,
                  style: TextStyle(
                    fontWeight: newCategoryIndex == index
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    categories[index].imageUrl,
                  ),
                )
              ],
            ),
          ),
        ),
        separatorBuilder: (_, index) => const SizedBox(
          width: 20,
        ),
        itemCount: categories.length,
      ),
    );
  }
}
