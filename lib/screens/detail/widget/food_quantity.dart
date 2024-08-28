import 'package:ecommerce/constants/colors.dart';
import 'package:ecommerce/models/food.dart';
import 'package:flutter/material.dart';

class FoodQuantity extends StatefulWidget {
  const FoodQuantity(this.food, {super.key});
  final Food food;

  @override
  State<FoodQuantity> createState() => _FoodQuantityState();
}

class _FoodQuantityState extends State<FoodQuantity> {
  int _quantity = 1;
  num _maxQuantity = 0;
  double _price = 0.0;
  double _total = 0.0;

  @override
  void initState() {
    super.initState();
    _price = widget.food.price!.toDouble();
    _maxQuantity = widget.food.quantity!;
    _quantity = _maxQuantity > 0 ? 1 : 0;
    _total = _quantity > 1
        ? double.parse((_price * _quantity).toStringAsFixed(2))
        : _price;
  }

  _incrementQuantity() {
    setState(() {
      if (_quantity < _maxQuantity) {
        _quantity++;
        _total = _getTotalFormatted(_price * _quantity);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('You have reached the maximum quantity'),
          ),
        );
      }
    });
  }

  _decrementQuantity() {
    setState(() {
      if (_quantity > 1) {
        _quantity--;
        _total = _getTotalFormatted(_price * _quantity);
      }
    });
  }

  _getTotalFormatted(double total) {
    String inString = total.toStringAsFixed(2);
    return double.parse(inString);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 40,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(30),
              ),
              child: FittedBox(
                child: Row(
                  children: [
                    const Text(
                      '\$',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '$_total',
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: _decrementQuantity,
                      icon: const Icon(
                        Icons.remove,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Text(
                        _quantity.toString(),
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    IconButton(
                      onPressed: _incrementQuantity,
                      icon: const Icon(Icons.add, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
