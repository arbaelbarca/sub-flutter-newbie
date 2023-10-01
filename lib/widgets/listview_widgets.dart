import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sub_newbie_dicoding/providers/all_product_tourism_providers.dart';

import '../model/tourism_place.dart';
import '../screens/detailscreen.dart';
import '../utils/circular_progress_dialog.dart';

class ListViewWidgets extends StatelessWidget {
  const ListViewWidgets({
    super.key,
    required this.IsLoading,
    required this.isTypeList,
  });

  final bool IsLoading;
  final bool isTypeList;

  @override
  Widget build(BuildContext context) {
    final getTourism = Provider.of<ProductTourismItem>(context);

    final getListTourism = getTourism.tourismList;

    return Stack(alignment: Alignment.bottomCenter, children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: IsLoading
            ? CircularProgress()
            : !isTypeList
                ? ListViewBuilder(getListTourism)
                : ListGridView(getListTourism),
      ),
    ]);
  }
}

class ListViewBuilder extends StatelessWidget {
  List<TourismPlace> tourismPlaceList;

  ListViewBuilder(this.tourismPlaceList, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final itemTourism = tourismPlaceList[index];
            return InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return DetailScreen(itemTourism);
                }));
              },
              child: Card(
                elevation: BorderSide.strokeAlignOutside,
                borderOnForeground: true,
                margin: EdgeInsets.all(4.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image.network(itemTourism.imageAsset),
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.all(9.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                itemTourism.name,
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
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
                        ))
                  ],
                ),
              ),
            );
          },
          itemCount: tourismPlaceList.length,
        )
      ],
    );
  }
}

class ListGridView extends StatelessWidget {
  List<TourismPlace> tourismPlaceList;

  ListGridView(this.tourismPlaceList, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 2, crossAxisSpacing: 5),
        itemBuilder: (BuildContext context, int index) {
          final itemTourism = tourismPlaceList[index];
          return GridTile(
            child: InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
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
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
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
        },
        itemCount: tourismPlaceList.length,
      ),
    );
  }
}
