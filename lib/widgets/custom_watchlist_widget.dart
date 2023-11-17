import 'package:flutter/material.dart';

class CustomWatchListWidget extends StatelessWidget {
  const CustomWatchListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
    Image(
      image: AssetImage(
        "assets/images/filmphoto.png",
      ),
    ),
    Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            textAlign: TextAlign.start,
            "Alita Battle Angel",
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "2019",
            style: TextStyle(
                color: Colors.grey,
                fontSize: 13,
                fontWeight: FontWeight.w500),
          ),
          Text(
            "Rosa Salazar, Christoph Waltz",
            style: TextStyle(
                color: Colors.grey,
                fontSize: 13,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 25,)
        ],
      ),
    )
      ],
    );
  }
}
