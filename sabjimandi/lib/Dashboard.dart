import 'package:flutter/material.dart';
import 'package:sabjimandi/modules/dashboard/freshVegetables/fresh_vegetable.dart';
import 'package:sabjimandi/modules/dashboard/lookingForWidget/looking_for_widget_page.dart';
import 'package:sabjimandi/modules/dashboard/promos/promos_cart.dart';
import 'package:sabjimandi/widgets/button_with_text_vertically.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 139, 229, 220),
      appBar: AppBar(
        leading: Icon(
          Icons.shopping_cart,
        ),
        title: Text(
          "Sabji Mandi Nepal",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LookingForWidgetPage(),
            const SizedBox(height: 10),
            PromosCard(),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Fresh Vegetables",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: 10,
            ),
            FreshVegetable(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Container(
          height: 60,
          decoration: const BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ButtonWithTextVertically(
                title: "Home",
                icon: Icons.home,
              ),
              ButtonWithTextVertically(
                title: "Profile",
                 icon: Icons.people
                 ),
              ButtonWithTextVertically(
                title: "News",
                 icon: Icons.whatshot
                 ),
            ],
          ),
        ),
      ),
    );
  }
}
