import 'package:flutter/material.dart';
import 'package:movies_app_project/moduls/category_model.dart';

class categoryitem extends StatelessWidget {
  const categoryitem({super.key,required this.categorymodel});
  final Categorymodel categorymodel;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(categorymodel.CategoryImage),
          Text(categorymodel.CategoryTitle,style: const TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
