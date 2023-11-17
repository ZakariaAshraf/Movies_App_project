import 'package:flutter/material.dart';
import '../../../widgets/custom_watchlist_widget.dart';

class WatchListView extends StatelessWidget {
  const WatchListView({Key? key}) : super(key: key);
  static const String routName = "Watch List View";

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
        child: Scaffold(
          appBar: AppBar(
            title: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text("Watch List",
                style: theme.textTheme.bodyLarge!.copyWith(
                    color: Colors.white),),
            ),
            centerTitle: false,
          ),
          body: ListView.builder(
            itemBuilder: (context, index) => CustomWatchListWidget(),
            itemCount: 5,

          )
    )
    ,
    );
  }
}
