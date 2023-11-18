import 'package:flutter/material.dart';
import 'package:movies_app_project/moduls/category_item.dart';

import '../../category_model.dart';

class BrowserView extends StatelessWidget {
  static const String routName = "BrowserView";

  BrowserView({super.key});

  List<Categorymodel> categories = [
    Categorymodel(
        CategoryId: "Action",
        CategoryTitle: "Action",
        CategoryImage: "assets/images/Action.jpeg"),
    Categorymodel(
        CategoryId: "Action",
        CategoryTitle: "Action",
        CategoryImage: "assets/images/Action.jpeg"),
    Categorymodel(
        CategoryId: "Action",
        CategoryTitle: "Action",
        CategoryImage: "assets/images/Action.jpeg"),
    Categorymodel(
        CategoryId: "Action",
        CategoryTitle: "Action",
        CategoryImage: "assets/images/Action.jpeg"),
    Categorymodel(
        CategoryId: "Action",
        CategoryTitle: "Action",
        CategoryImage: "assets/images/Action.jpeg"),
    Categorymodel(
        CategoryId: "Action",
        CategoryTitle: "Action",
        CategoryImage: "assets/images/Action.jpeg"),
    Categorymodel(
        CategoryId: "Action",
        CategoryTitle: "Action",
        CategoryImage: "assets/images/Action.jpeg"),
    Categorymodel(
        CategoryId: "Action",
        CategoryTitle: "Action",
        CategoryImage: "assets/images/Action.jpeg"),
    Categorymodel(
        CategoryId: "Action",
        CategoryTitle: "Action",
        CategoryImage: "assets/images/Action.jpeg"),
    Categorymodel(
        CategoryId: "Action",
        CategoryTitle: "Action",
        CategoryImage: "assets/images/Action.jpeg"),
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 60,
            alignment: Alignment.bottomLeft,
            child: const Text(
              "Browse",
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(5),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 10,
                childAspectRatio:9/8,
              ),
              itemBuilder: (context, index) =>
                  categoryitem(categorymodel: categories[index]),
              itemCount: categories.length,
            ),
          )
        ],
      ),
    );
  }
}
