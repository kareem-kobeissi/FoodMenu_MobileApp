import 'package:ecommerce/constants/colors.dart';
import 'package:ecommerce/models/restaurant.dart';
import 'package:flutter/material.dart';

class RestaurantInfo extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantInfo(
    this.restaurant, {
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    restaurant.name!,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          restaurant.waitTime!,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        restaurant.distance!,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.withOpacity(0.4),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        restaurant.label!,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.withOpacity(0.4),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  restaurant.logoUrl!,
                  width: 80,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  '"${restaurant.description}"',
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star_outline,
                    color: primaryColor,
                  ),
                  Text(
                    '${restaurant.rating}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
