import 'package:flutter/material.dart';
import 'package:shopping_list/data/dummy_items.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: groceryItems
          .map(
            (e) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
              child: Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    color: e.category.color,
                  ),
                  const SizedBox(width: 20),
                  Text(e.name),
                  const Spacer(),
                  Text(
                    e.quantity.toString(),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
