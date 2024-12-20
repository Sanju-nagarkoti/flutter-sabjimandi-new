import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
   ProductDetails({super.key});

  var leftRightPadding = const EdgeInsets.symmetric(
    horizontal: 10,
  );

  @override
  Widget build(BuildContext context) {
    final sabji = (ModalRoute.of(context)?.settings.arguments ?? {})
    as
    Map<String,String>
    ;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Product Details",
        ),
      ),

      body: SingleChildScrollView(
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
               sabji['url'] ?? "",
              height: 350,
              fit: BoxFit.cover,
              width: double.infinity,
              ),
            Padding(
              padding: leftRightPadding.copyWith(
                top: 20,
                bottom: 20,
              ),
              child: Text(
                sabji['title'] ?? "N/A",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              
                ),
            ),
            Padding(
              padding: leftRightPadding.copyWith(
        
                bottom: 10,
              ),
              child: Text(
                "Be the first to review the product.",
                style: TextStyle(
                  fontSize: 12,
                ),
                ),
            ),
            Padding(
              padding: leftRightPadding.copyWith(
                bottom: 10,
              ),
              child: buildDetailsRow(
                price: 300,
                SKU: "SomeId",
              ),
            ),
            Divider(),
            Padding(
              padding: leftRightPadding.copyWith(
                top: 10,
                bottom: 20,
              ),
              child: Text("Notify me when price drops"),
            ),
          ],
        ),
      ),
    );
  }
  Widget buildDetailsRow({required double price,required String SKU}){
         return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("as low as",
                  style: TextStyle(
                    fontSize: 13,
                  ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Rs .${price.toStringAsFixed(2)}",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),  
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("In stock".toUpperCase(),
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "SKU#:${SKU.toUpperCase()}",
                  style: TextStyle(
                    fontSize: 13,
                  ),),
                ],
              ),
            ],
          );
  }
}
 