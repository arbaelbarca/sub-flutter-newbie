import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/tourism_place.dart';
import '../screens/detailscreen.dart';

class TourismItemList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final getTourismItem = Provider.of<TourismPlace>(context);

    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return DetailScreen(getTourismItem);
        }));
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
                child: Image.network(getTourismItem.imageAsset),
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
                        getTourismItem.name,
                        style: const TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        getTourismItem.location,
                        style: const TextStyle(fontSize: 11),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        getTourismItem.description,
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
