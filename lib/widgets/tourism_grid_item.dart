import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/tourism_place.dart';
import '../screens/detailscreen.dart';

class TourismItemGrid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final itemTourism = Provider.of<TourismPlace>(context);

    return GridTile(
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return DetailScreen(itemTourism);
          }));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: BorderSide.strokeAlignOutside,
              borderOnForeground: true,
              margin: EdgeInsets.all(4.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: Image.network(
                        itemTourism.imageAsset,
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(9.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          itemTourism.name,
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          itemTourism.location,
                          style: TextStyle(fontSize: 11),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          itemTourism.description,
                          maxLines: 2,
                          style: TextStyle(fontSize: 11),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
