import 'package:flutter/material.dart';
import 'package:flutter_internship/phone_shop/widgets/data/phones_list.dart';
import 'package:flutter_internship/phone_shop/widgets/models/phone.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    Widget productListView;

    productListView = GridView.builder(
      scrollDirection: Axis.horizontal,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        crossAxisSpacing: 16,
      ),
      itemCount: phonesList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Phone(
            image: phonesList[index].image,
          ),
        );
      },
    );

    return SizedBox(
      height: 328,
      child: productListView,
    );
  }
}
