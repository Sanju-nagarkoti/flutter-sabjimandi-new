import 'package:flutter/material.dart';
import 'package:sabjimandi/Dashboard.dart';
import 'package:sabjimandi/modules/product/product_details.dart';

void main(){
  return runApp(Home());
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        //initial route
        "/":(ctx) {
          return Dashboard();
        },
        "/product/details":(ctx){
          return ProductDetails();
        },
      },
      theme: ThemeData(
        primarySwatch: Colors.teal,
        useMaterial3: false,
        ),
       initialRoute: "/",
    );
  }
}