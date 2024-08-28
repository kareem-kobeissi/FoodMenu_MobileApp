import 'package:ecommerce/constants/colors.dart';
import 'package:flutter/material.dart';

class FoodImage extends StatelessWidget {
  const FoodImage(this.imageUrl, {super.key});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 250,
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                      color: backgroundColor,
                    ),
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: const EdgeInsets.all(15),
                width: 250,
                height: 250,
                decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    spreadRadius: 5,
                    offset: const Offset(0, 10),
                  ),
                ]),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
