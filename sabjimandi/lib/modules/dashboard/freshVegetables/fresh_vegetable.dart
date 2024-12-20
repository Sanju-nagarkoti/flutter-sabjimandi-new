import 'package:flutter/material.dart';
import 'package:sabjimandi/modules/dashboard/freshVegetables/fresh_vegetable_card.dart';

class FreshVegetable extends StatelessWidget {
  FreshVegetable({super.key});
  var dataArray = [
    {
      "url":
          "https://plus.unsplash.com/premium_photo-1669906333449-5fc2c47cd8ec?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "title": "Tomato"
    },
    {
      "url":
          "https://images.unsplash.com/photo-1613743983303-b3e89f8a2b80?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "title": "Cauli"
    },
    {
      "url":
          "https://plus.unsplash.com/premium_photo-1724256031338-b5bfba816cfd?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "title": "Potato"
    },
    {
      "url":
          "https://plus.unsplash.com/premium_photo-1724849305142-498abc1f7b89?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "title": "Carrot"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        childAspectRatio: 0.8,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (ctx, index) {
        final sabji = dataArray[index];
        return InkWell(
          onTap: () {
            Navigator.pushNamed(context, "/product/details", arguments: sabji);
          },
          child: FreshVegetableCard(
            title: sabji['title'] ?? '',
            imageUrl: sabji["url"] ?? '',
            price: "200",
            unit: "kg",
          ),
        );
      },
      itemCount: dataArray.length,
    );
  }
}
