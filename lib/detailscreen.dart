import 'package:flutter/material.dart';

import 'model/tourism_place.dart';

class DetailScreen extends StatefulWidget {
  final TourismPlace tourismPlace;

  const DetailScreen(this.tourismPlace, {Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState(this.tourismPlace);
}

class _DetailScreenState extends State<DetailScreen> {
  final TourismPlace tourismPlace;

  _DetailScreenState(this.tourismPlace);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                  Image.network(tourismPlace.imageAsset),
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
                            tourismPlace.name,
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
                            tourismPlace.location,
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5.0),
                          child: Text(
                            tourismPlace.description,
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 12, color: Colors.black),
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
                            "Detail Waktu",
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
                              Padding(
                                padding: EdgeInsets.all(11),
                                child: Column(
                                  children: [
                                    Icon(Icons.date_range),
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Text(
                                        tourismPlace.openDays,
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(11),
                                child: Column(
                                  children: [
                                    Icon(Icons.date_range),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 10, left: 20, right: 20),
                                      child: Text(
                                        tourismPlace.openTime,
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(11),
                                child: Column(
                                  children: [
                                    Icon(Icons.date_range),
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Text(
                                        tourismPlace.ticketPrice,
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    )
                                  ],
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
                margin: EdgeInsets.only(left: 15, top: 15),
                child: Text(
                  "Detail Wisata",
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
                    children: tourismPlace.imageUrls.map((url) {
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
          onPressed: () {},
          tooltip: 'Increment',
          child: const Icon(Icons.favorite),
        ),
      ),
    );
  }
}
