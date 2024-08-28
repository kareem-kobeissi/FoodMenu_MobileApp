import 'package:ecommerce/constants/colors.dart';
import 'package:ecommerce/models/food.dart';
import 'package:ecommerce/screens/detail/widget/food_quantity.dart';
import 'package:flutter/material.dart';

class FoodDetails extends StatelessWidget {
  const FoodDetails(this.food, {super.key});
  final Food food;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      color: backgroundColor,
      child: Column(
        children: [
          Text(
            food.name!,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildTextIcon(
                Icons.access_time_outlined,
                Colors.blue,
                food.waitTime!,
              ),
              _buildTextIcon(
                Icons.star_outlined,
                Colors.amber,
                '${food.rating}',
              ),
              _buildTextIcon(
                Icons.local_fire_department_outlined,
                Colors.red,
                food.calories!,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          FoodQuantity(food),
          const SizedBox(height: 30),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text('Ingredients',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 110,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.network(
                        food.ingredients![index].values.first,
                        width: 52,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      food.ingredients![index].keys.first,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              separatorBuilder: (_, i) => const SizedBox(width: 15),
              itemCount: food.ingredients!.length,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'About',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              food.about!,
              style: const TextStyle(
                wordSpacing: 1.2,
                height: 1.5,
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTextIcon(IconData icon, Color color, String text) {
    return Row(
      children: [
        Icon(icon, color: color, size: 20),
        const SizedBox(width: 5),
        Text(text, style: const TextStyle(fontSize: 16))
      ],
    );
  }
}
