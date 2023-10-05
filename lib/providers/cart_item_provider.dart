import 'package:flutter/cupertino.dart';
import 'package:sub_newbie_dicoding/model/cart_item_model.dart';

class CartItemProvider with ChangeNotifier {
  Map<String, CartItemModel> chartItems = {};

  Map<String, CartItemModel> get getChartItem => chartItems;

  void addFavorite(String getId, String getImage, String getTitle, String desc) {
    if (chartItems.containsKey(getId)) {
      print("respon update");
      chartItems.update(
        getId,
        (value) => CartItemModel(
            id: getId, image: getImage, title: getTitle, description: desc),
      );
    } else {
      chartItems.putIfAbsent(
          getId,
          () => CartItemModel(
              id: getId, image: getImage, title: getTitle, description: desc));
      print("respon Insert ");
    }
    notifyListeners();
  }
}
