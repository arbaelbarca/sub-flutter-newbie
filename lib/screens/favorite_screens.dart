import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sub_newbie_dicoding/providers/cart_item_provider.dart';
import 'package:sub_newbie_dicoding/widgets/cart_list_item.dart';

class FavoriteScreen extends StatelessWidget {
  static const nameRoute = "/favoritePage";

  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final getChartItemFav = Provider.of<CartItemProvider>(context);

    var jsonList = jsonEncode(getChartItemFav.chartItems);

    print("respon Getchartitem $jsonList");

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Favorite Wisata"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text("Haloo favorite"),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: getChartItemFav.chartItems.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return CartListItem(getChartItemFav.chartItems[index]!);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
