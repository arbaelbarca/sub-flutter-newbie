
import 'package:flutter/material.dart';
import 'package:sub_newbie_dicoding/model/cart_item_model.dart';
import 'package:sub_newbie_dicoding/providers/cart_item_provider.dart';

class CartListItem extends StatelessWidget {
  final CartItemModel cartItemModel;

  const CartListItem(this.cartItemModel,{super.key});


  @override
  Widget build(BuildContext context) {

    // print("respon ModelFav " + cartItemModel);

    return InkWell(
      onTap: () {
        // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        //   // return DetailScreen(getTourismItem);
        // }));
      },
      child: Card(
        elevation: BorderSide.strokeAlignOutside,
        borderOnForeground: true,
        margin: const EdgeInsets.all(4.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: Image.network(cartItemModel.image),
              ),
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cartItemModel.title,
                        style: const TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "",
                        style: const TextStyle(fontSize: 11),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        cartItemModel.description,
                        maxLines: 2,
                        style: const TextStyle(fontSize: 11),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
