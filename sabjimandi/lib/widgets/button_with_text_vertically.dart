import 'package:flutter/material.dart';

class ButtonWithTextVertically extends StatelessWidget {
  const ButtonWithTextVertically({
    super.key, 
    this.onPressed, 
    required this.title, 
    required this.icon,
    this.color,
    });
    
  final VoidCallback? onPressed;
  final String title;
  final IconData icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
                  icon,
                   
                    color:color ?? Colors.white,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      color:color ?? Colors.white,
                      fontSize: 10,
                    ),
                  ),
        ],
      ),
    );
  }
}