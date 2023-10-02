import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sub_newbie_dicoding/model/cart_item_model.dart';
import 'package:sub_newbie_dicoding/providers/cart_item_provider.dart';
import 'package:sub_newbie_dicoding/utils.dart';

import '../model/tourism_place.dart';

class DetailScreen extends StatefulWidget {
  final TourismPlace tourismPlace;

  DetailScreen(this.tourismPlace, {Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    final getCart = Provider.of<CartItemProvider>(context, listen: false);

    return WillPopScope(
      onWillPop: () async {
        // Navigator.pop(context);
        showToast("Backk sayyss");
        return true;
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          // appBar: AppBar(
          //   title: Text("Detail Wisata"),
          // ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Stack(
                  children: [
                    Image.network(
                      widget.tourismPlace.imageAsset,
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                    ),
                    SafeArea(
                      child: Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.all(7.0),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(Icons.arrow_back),
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: Card(
                    elevation: 5,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            margin: EdgeInsets.all(5.0),
                            child: Text(
                              widget.tourismPlace.name,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(5.0),
                            child: Text(
                              widget.tourismPlace.location,
                              textAlign: TextAlign.start,
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(5.0),
                            child: Text(
                              widget.tourismPlace.description,
                              textAlign: TextAlign.start,
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: Card(
                    elevation: 5,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            margin: EdgeInsets.all(5.0),
                            child: Text(
                              "Detail Time",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsets.all(11),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.calendar_view_day_outlined),
                                        Container(
                                          margin: EdgeInsets.only(top: 10),
                                          child: Center(
                                            child: Text(
                                              widget.tourismPlace.openDays,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsets.all(11),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.date_range),
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: 10, left: 20, right: 20),
                                          child: Center(
                                            child: Text(
                                              widget.tourismPlace.openTime,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsets.all(11),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.price_change),
                                        Container(
                                          margin: EdgeInsets.only(top: 10),
                                          child: Center(
                                            child: Text(
                                              widget.tourismPlace.ticketPrice,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 15),
                  child: Text(
                    "Detail Picture",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(6.0),
                  child: SizedBox(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: widget.tourismPlace.imageUrls.map((url) {
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(url),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                )
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Favorite add success"),
                duration: Duration(milliseconds: 400),
              ));

              setState(() {
                isFavorite = !isFavorite;
              });
              getCart.addFavorite(
                  widget.tourismPlace.id,
                  widget.tourismPlace.imageAsset,
                  widget.tourismPlace.name,
                  widget.tourismPlace.description);
            },
            child: isFavorite
                ? Icon(Icons.favorite)
                : Icon(Icons.favorite_outline),
          ),
        ),
      ),
      // child: MaterialApp(
      //   debugShowCheckedModeBanner: false,
      //
      // ),
    );
  }
}
