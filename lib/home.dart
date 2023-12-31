import 'package:flutter/material.dart';
import 'package:sub_newbie_dicoding/detailscreen.dart';
import 'package:sub_newbie_dicoding/utils/circular_progress_dialog.dart';

import 'model/tourism_place.dart';

class Home extends StatefulWidget {
  final String getName;

  Home(this.getName, {Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var isTypeList = false;
  var IsLoading = false;

  var tourismPlaceList = [
    TourismPlace(
      name: 'Farm House Lembang',
      location: 'Lembang',
      description:
          'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
      openDays: 'Open Everyday',
      openTime: '09:00 - 20:00',
      ticketPrice: 'Rp 25000',
      imageAsset:
          'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
      imageUrls: [
        'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'
      ],
    ),
    TourismPlace(
      name: 'Observatorium Bosscha',
      location: 'Lembang',
      description:
          'Memiliki beberapa teleskop, antara lain, Refraktor Ganda Zeiss, Schmidt Bimasakti, Refraktor Bamberg, Cassegrain GOTO, dan Teleskop Surya. Refraktor Ganda Zeiss adalah jenis teleskop terbesar untuk meneropong bintang. Benda ini diletakkan pada atap kubah sehingga saat teropong digunakan, atap tersebut harus dibuka. Observatorium Bosscha boleh dikunjungi oleh siapa pun, tanpa tiket. Namun, bagi yang ingin menggunakan teleskop Zeiss, wajib mendaftarkan diri. Untuk instansi atau lembaga pendidikan, diberikan jadwal hari Selasa sampai Jumat. Sementara itu, kunjungan individu dibuka setiap hari Sabtu.',
      openDays: 'Open Tuesday - Saturday',
      openTime: '09:00 - 14:30',
      ticketPrice: 'Rp 20000',
      imageAsset:
          'https://media-cdn.tripadvisor.com/media/photo-o/12/6b/63/0b/bosscha-observatory.jpg',
      imageUrls: [
        'https://media-cdn.tripadvisor.com/media/photo-o/12/6b/63/0b/bosscha-observatory.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-p/0d/6a/88/9b/photo3jpg.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-o/11/3f/04/39/p-20171111-110220-largejpg.jpg',
      ],
    ),
    TourismPlace(
      name: 'Jalan Asia Afrika',
      location: 'Kota Bandung',
      description:
          'Jalan Asia Afrika di Bandung memiliki kaitan yang sangat erat dengan pendirian kota Kembang ini. Karena pada saat itu, Gubernur Jenderal Herman Willem Deaendels dari Belanda menancapkan tongkatnya saat memerintahkan pendirian kota ini, yang kemudian diabadikan menjadi tugu Bandung Nol Kilometer.',
      openDays: 'Open Everyday',
      openTime: '24 hours',
      ticketPrice: 'Free',
      imageAsset:
          'https://media-cdn.tripadvisor.com/media/photo-o/0d/c2/e7/e6/quotes-kota-bandung.jpg',
      imageUrls: [
        'https://media-cdn.tripadvisor.com/media/photo-o/0d/c2/e7/e6/quotes-kota-bandung.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-w/17/f4/44/01/jalan-asia-afrika.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-s/0a/ef/36/e2/jalan-asia-afrika.jpg',
      ],
    ),
    TourismPlace(
      name: 'Stone Garden',
      location: 'Padalarang',
      description:
          'Stone Garden atau Taman Batu di Padalarang – Bandung ini adalah nama secara harafiah untuk apa yang akan kita lihat jika berada di sana. Hamparan batu yang artistik membuat kita merasa tidak sedang berada di Bandung, apalagi di Padalarang. Hamparan batu yang dimaksud bukan terhampar begitu saja di atas tanah luas yang menjadi permukaannya. Batu-batu besar yang ukuran pastinya bervariasi tersusun seperti memiliki suatu formasi matematis.',
      openDays: 'Open Everyday',
      openTime: '06:00 - 17:00',
      ticketPrice: 'Rp 3000',
      imageAsset:
          'https://media-cdn.tripadvisor.com/media/photo-o/15/01/d7/4b/p-20180510-153310-01.jpg',
      imageUrls: [
        'https://media-cdn.tripadvisor.com/media/photo-o/15/01/d7/4b/p-20180510-153310-01.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-w/15/68/00/32/stone-garden-citatah.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-o/0d/a2/cb/05/stone-garden-citatah.jpg',
      ],
    ),
    TourismPlace(
      name: 'Taman Film Pasopati',
      location: 'Kota Bandung',
      description:
          'Menjadi salah satu tempat wisata di Bandung yang favorit, tentu Taman Film ini memiliki fasilitas cukup memadai. Pemberian fasilitas ini memiliki harapan para pengunjung akan merasa nyaman dan tak segan2 untuk kembali berkunjung terus menerus kesini. Beberapa fasilitas taman yang bisa kamu nikmati diantaranya seperti layar videotron besar berukuran 4×8 untuk memutar berbagai macam pilihan film seperti Film Indonesia, Bollywood, Korea, ataupun Indie Bandung.',
      openDays: 'Open Everyday',
      openTime: '24 hours',
      ticketPrice: 'Free',
      imageAsset:
          'https://media-cdn.tripadvisor.com/media/photo-o/08/8b/87/50/bandung-movie-park.jpg',
      imageUrls: [
        'https://media-cdn.tripadvisor.com/media/photo-o/08/8b/87/50/bandung-movie-park.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-o/17/67/d5/53/img-20190505-114509-largejpg.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-w/09/73/33/05/taman-film-pasopati.jpg',
      ],
    ),
    TourismPlace(
      name: 'Museum Geologi',
      location: 'Kota Bandung',
      description:
          'Museum Geologi didirikan pada tanggal 16 Mei 1929. Museum ini telah direnovasi dengan dana bantuan dari JICA (Japan International Cooperation Agency). Setelah mengalami renovasi, Museum Geologi dibuka kembali dan diresmikan oleh Wakil Presiden RI, Megawati Soekarnoputri pada tanggal 23 Agustus 2000. Sebagai salah satu monumen bersejarah, museum berada di bawah perlindungan pemerintah dan merupakan peninggalan nasional. Dalam Museum ini, tersimpan dan dikelola materi-materi geologi yang berlimpah, seperti fosil, batuan, mineral. Kesemuanya itu dikumpulkan selama kerja lapangan di Indonesia sejak 1850.',
      openDays: 'Open Saturday - Thursday',
      openTime: '09:00 - 15:30',
      ticketPrice: 'Rp 3000',
      imageAsset:
          'https://media-cdn.tripadvisor.com/media/photo-w/19/1c/8e/f7/geology-museum.jpg',
      imageUrls: [
        'https://media-cdn.tripadvisor.com/media/photo-w/19/1c/8e/f7/geology-museum.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-o/11/a7/35/b7/geology-museum.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-s/1a/55/e0/dc/geology-museum.jpg',
      ],
    ),
    TourismPlace(
      name: 'Floating Market',
      location: 'Lembang',
      description:
          'Tempat wisata ini sepertinya memang ditujukan untuk wisata keluarga di Bandung. Di sini kita bisa menikmati suasana kawasan yang tertata rapi dan alami. Pada awalnya, floating market Lembang tidak begitu luas. Tapi sekarang sudah ekspansi dan memiliki banyak objek menarik baru. Nama floating market ini sepertinya merujuk pada stand tempat jualan makanan yang berada dalam perahu.',
      openDays: 'Open Everyday',
      openTime: '09:00 - 17:00',
      ticketPrice: 'Rp 20000',
      imageAsset:
          'https://media-cdn.tripadvisor.com/media/photo-o/17/f9/ff/f8/floating-market-bandung.jpg',
      imageUrls: [
        'https://media-cdn.tripadvisor.com/media/photo-o/17/f9/ff/f8/floating-market-bandung.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-p/1a/86/d3/cd/20200103-125059-largejpg.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-p/19/ce/b4/9b/img20181224120857-largejpg.jpg',
      ],
    ),
    TourismPlace(
      name: 'Kawah Putih',
      location: 'Ciwidey',
      description:
          'Kawah Putih adalah tempat wisata di Bandung yang paling terkenal. Berlokasi di Ciwidey, Jawa Barat, kurang lebih sekitar 50 KM arah selatan kota Bandung, Kawah Putih adalah sebuah danau yang terbentuk akibat dari letusan Gunung Patuha. Sesuai dengan namanya, tanah yang ada di kawasan ini berwarna putih akibat dari pencampuran unsur belerang.',
      openDays: 'Open Everyday',
      openTime: '07:00 - 17:00',
      ticketPrice: 'Rp 15000',
      imageAsset:
          'https://media-cdn.tripadvisor.com/media/photo-o/0b/6e/7c/ce/rocks-sticking-out-of.jpg',
      imageUrls: [
        'https://media-cdn.tripadvisor.com/media/photo-o/0b/6e/7c/ce/rocks-sticking-out-of.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-p/0b/35/30/14/white-crater.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-o/0a/8b/9a/79/2945-t00572-www-initempatwisat.jpg',
      ],
    ),
    TourismPlace(
      name: 'Ranca Upas',
      location: 'Ciwidey',
      description:
          'Ranca Upas Ciwidey adalah kawasan bumi perkemahan di bawah pengelolaan perhutani. Tempat ini berada di kawasan wisata Bandung Selatan, satu lokasi dengan kawah putih, kolam Cimanggu dan situ Patenggang. Banyak hal yang bisa dilakukan di kawasan wisata ini, seperti berkemah, berinteraksi dengan rusa, sampai bermain di water park dan mandi air panas.',
      openDays: 'Open Everyday',
      openTime: '24 hours',
      ticketPrice: 'Rp 20000',
      imageAsset:
          'https://media-cdn.tripadvisor.com/media/photo-o/1a/e0/7f/9c/kampung-cai-ranca-upas.jpg',
      imageUrls: [
        'https://media-cdn.tripadvisor.com/media/photo-o/1a/e0/7f/9c/kampung-cai-ranca-upas.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-w/13/ee/2f/87/ranca-upas.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-w/13/ee/27/0a/ranca-upas.jpg',
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          actions: [
            IconButton(
              icon: isTypeList == false
                  ? Icon(Icons.grid_view_sharp)
                  : Icon(Icons.list),
              onPressed: () async {
                setState(() {
                  isTypeList = !isTypeList;
                });
                setState(() {
                  IsLoading = true;
                });

                await Future.delayed(const Duration(seconds: 5));

                setState(() {
                  IsLoading = false;
                });
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, left: 15),
                child: Text(
                  "Hi, ${widget.getName}",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Text(
                  "Welcome application tour wisata",
                  style: TextStyle(fontSize: 13),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Stack(alignment: Alignment.bottomCenter, children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IsLoading
                      ? CircularProgress()
                      : !isTypeList
                          ? ListViewBuilder(tourismPlaceList)
                          : ListGridView(tourismPlaceList),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }

  void updateIcon(bool isUpdate) {
    setState(() {
      // if (isUpdate){
      //   return IconButton(
      //
      //   )
      // }
    });
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
