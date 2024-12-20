import 'package:flutter/material.dart';
import 'package:sabjimandi/widgets/dashboard_food_cart.dart';

class LookingForWidgetPage extends StatelessWidget {
  LookingForWidgetPage({super.key});
  var dataArray= [{
    "url":"https://plus.unsplash.com/premium_photo-1669906333449-5fc2c47cd8ec?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "title":"Tomato"
  },
  {
    "url":"https://images.unsplash.com/photo-1613743983303-b3e89f8a2b80?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "title":"Cauli"
  },{
     "url":"https://plus.unsplash.com/premium_photo-1724256031338-b5bfba816cfd?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "title":"Potato"
  },
  {
     "url":"https://plus.unsplash.com/premium_photo-1724849305142-498abc1f7b89?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "title":"Carrot"
  }];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "What are you looking for?",
          style: const TextStyle(
            color: Colors.teal,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.8,
          ),
          //build all childs at first and align height after calculation
          shrinkWrap: true,
          //restrict scroll feature
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (ctx,index){
            final data=dataArray[index];
            return DashboardFoodCart(
              imageUrl: data['url'] ?? "",
              title: data['title'] ?? "N/A",
              );
          },
          itemCount: dataArray.length,
        ),
      ],
    );
  }
}