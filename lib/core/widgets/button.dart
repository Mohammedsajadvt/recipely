import 'package:flutter/material.dart';
import 'package:recipely/core/common/app_array.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  const CustomButton({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppArray().colors[1],
          borderRadius: BorderRadius.circular(12),
        ),
        child:  Center(
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}