import 'package:ecommerce/screens/home/widget/categories_list.dart';
import 'package:ecommerce/screens/home/widget/food_list_view.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/models/restaurant.dart';
import 'package:ecommerce/screens/home/widget/restaurant_info.dart';
import '../../widgets/cutom_app_bar.dart';
import '../../constants/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selectedCategory = 0;
  final pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  final restaurant = Restaurant.generateRestaurant();

  changeCategory(int index) {
    setState(() {
      selectedCategory = index;
    });
    pageController.jumpToPage(index);

    print(pageController.page);
  }

  changeView(int index) {
    print(pageController.page);
    setState(() {
      selectedCategory = index;
    });

    print('changeView: $index');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(
              Icons.arrow_back_ios_outlined,
              Icons.search_outlined,
            ),
            RestaurantInfo(restaurant),
            CategoriesList(
              selectedCategory,
              restaurant.categories!,
              changeCategory,
            ),
            Expanded(
              child: FoodListView(
                selectedCategory,
                changeView,
                pageController,
                restaurant,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              height: 60,
              child: SmoothPageIndicator(
                controller: pageController,
                count: restaurant.categories!.length,
                effect: CustomizableEffect(
                  dotDecoration: DotDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    width: 8,
                    height: 8,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  activeDotDecoration: DotDecoration(
                    color: backgroundColor,
                    width: 10,
                    height: 10,
                    borderRadius: BorderRadius.circular(10),
                    dotBorder: const DotBorder(
                      color: primaryColor,
                      width: 2,
                      padding: 2,
                    ),
                  ),
                ),
                onDotClicked: (index) => changeCategory(index),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: primaryColor,
          elevation: 2,
          child: const Icon(
            Icons.shopping_bag_outlined,
            color: Colors.black,
            size: 30,
          ),
        ));
  }
}
