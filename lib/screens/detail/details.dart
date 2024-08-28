import 'package:ecommerce/constants/colors.dart';
import 'package:ecommerce/models/food.dart';
import 'package:ecommerce/screens/detail/widget/food_details.dart';
import 'package:ecommerce/screens/detail/widget/food_image.dart';
import 'package:ecommerce/widgets/cutom_app_bar.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage(this.food, {super.key});
  final Food food;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Column(children: [
          CustomAppBar(
            Icons.arrow_back_ios_outlined,
            Icons.favorite_outline,
            leftCallback: () => Navigator.pop(context),
          ),
          FoodImage(food.imageUrl!),
          FoodDetails(food),
        ]),
      ),
      floatingActionButton: SizedBox(
        width: 100,
        height: 56,
        child: RawMaterialButton(
          onPressed: () => {},
          fillColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          elevation: 2,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
              size: 30,
            ),
            Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  food.quantity.toString(),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ]),
        ),
      ),
    );
  }
}
