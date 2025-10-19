import 'package:flutter/material.dart';

class NewestItemsWidget extends StatelessWidget {
  const NewestItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: EdgeInsetsGeometry.symmetric(vertical: 10,horizontal: 10),
      child: Column(
        children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
          child: Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow:  [
                BoxShadow(
                    color: Colors.grey.withValues(alpha: 0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                ),
              ]
            ),
          ),)
        ],
      ),),
    );
  }
}
