// ignore_for_file: avoid_unnecessary_containers, file_names

import 'package:flutter/material.dart';
import 'package:lalinapp/widgets/persiapan_vid_tile.dart';

import 'package:lalinapp/pages/homepage.dart';
import 'package:lalinapp/theme.dart';
import 'package:lalinapp/widgets/card_itemlist_content.dart';
import 'package:lalinapp/widgets/persiapan_vid_tile.dart';
import 'package:lalinapp/widgets/rambu_vid_tile/rambu_vid_petunjuk_tile.dart';
import 'package:lalinapp/widgets/rambu_vid_tile/rambu_vid_tile.dart';
import 'package:lalinapp/widgets/rambu_vid_tile/rambu_vid_tile_detail.dart';

class RambuListVid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget heading() {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 14,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  greenColor,
                  Color(0xffE1CA9E),
                ])),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Rambu -  Rambu',
                  style: txBold.copyWith(fontSize: 20),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  child: Icon(
                    Icons.home_outlined,
                    color: blackColor,
                    size: 35,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Rambu merupakan salah satu perlengkapan jalan, dalam bentuk lambang, huruf, angka, kalimat, dan atau perpaduan dari empat bentuk tersebut, memiliki fungsi sebagai peringatan larangan, perintah, atau petunjuk bagi pengguna jalan',
              style: txLight.copyWith(fontSize: 14, height: 1.5),
            )
          ],
        ),
      );
    }

    Widget body() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 17),
        child: SingleChildScrollView(
            child: Column(
          children: [
            RambuVidTile(
              imgUrl:
                  'https://cms.daihatsu.co.id/uploads/tipsandtrick/rambuperingatan-1609778735445.jpeg',
              title: 'Rambu Peringatan',
              descCaption:
                  'Rambu jenis ini digunakan untuk memberi peringatan kemungkinan ada bahaya atau tempat berbahaya di depan pengguna jalan. Warna dasar rambu peringatan berwarna kuning dengan lambang atau tulisan berwarna hitam.',
              imgUrlContent:
                  'https://images.unsplash.com/photo-1627024165011-6a9e2c4ea343?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
              vidioUrl: 'https://youtu.be/X1rdTzTIUdU',
              contentCount: 'Rambu Peringatan 1 / 1',
              descCaptionContent:
                  'Rambu atau Simbol Peringatan ini adalah sebuah tanda yang mengisyaratkan kemungkinan ada bahaya atau kondisi potensial yang mengharuskan menjadi perhatian khusus pada berlalu lintas',
              otherImgUrl:
                  'https://images.unsplash.com/photo-1572670014853-1d3a3f22b40f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80',
              otherVidioUrl: 'https://youtu.be/RvXisFmpKYk',
              otherTitle: 'Rambu Larangan',
              otherContentCount: 'Rambu Larangan 1 / 1',
              otherDescCaption:
                  'Rambu Larangan ini sebuah symbol yang menandakan sebuah larangan tertentu dilakukan oleh pengguna jalan pada lalu lintas',
            ),
            SizedBox(
              height: 16,
            ),
            RambuVidTile(
              imgUrl:
                  'https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1635226075/stop-2717058_960_720_ppztly.png',
              title: 'Rambu Larangan',
              descCaption:
                  'Rambu Larangan menunjukkan perbuatan yang dilarang dilakukan oleh pemakai jalan. Warna dasar dari rambu jenis ini adalah berwarna putih dan lambang atau tulisan berwarna hitam atau merah',
              imgUrlContent:
                  'https://images.unsplash.com/photo-1599339781190-8050b013376c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
              vidioUrl: 'https://youtu.be/RvXisFmpKYk',
              contentCount: 'Rambu Larangan 1 / 1',
              descCaptionContent:
                  'Rambu Larangan ini sebuah symbol yang menandakan sebuah larangan tertentu dilakukan oleh pengguna jalan pada lalu lintas',
              otherImgUrl:
                  'https://images.unsplash.com/photo-1627024165011-6a9e2c4ea343?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
              otherVidioUrl: 'https://youtu.be/X1rdTzTIUdU',
              otherTitle: 'Rambu Peringatan',
              otherContentCount: 'Rambu Peringatan 1 / 1',
              otherDescCaption:
                  'Rambu atau Simbol Peringatan ini adalah sebuah tanda yang mengisyaratkan kemungkinan ada bahaya atau kondisi potensial yang mengharuskan menjadi perhatian khusus pada berlalu lintas',
            ),
            SizedBox(
              height: 16,
            ),
            RambuVidTile(
              imgUrl:
                  'https://asset-a.grid.id/crop/16x42:738x536/360x240/photo/2021/01/18/3822849233.jpg',
              title: 'Rambu Perintah',
              descCaption:
                  'Rambu ini menyatakan perintah yang harus dilakukan oleh pemakai jalan. Rambu perintah berbentuk bundar berwarna biru dan lambang atau tulisan berwarna putih serta merah untuk garis serong sebagai batas akhir perintah.',
              imgUrlContent:
                  'https://images.unsplash.com/photo-1587316745726-41d3e8b4942d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=843&q=80',
              vidioUrl: 'https://youtu.be/aNhbnDWnvtE',
              contentCount: 'Rambu Perintah 1 / 1',
              descCaptionContent:
                  'Rambu Perintah ini adalah sebuah symbol yang menyatakan suatu perintah kepada para pengguna jalan dan wajib dilakukan',
              otherImgUrl:
                  'https://images.unsplash.com/photo-1599339781190-8050b013376c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
              otherVidioUrl: 'https://youtu.be/RvXisFmpKYk',
              otherTitle: 'Rambu Larangan',
              otherContentCount: 'Rambu Larangan 1 / 1',
              otherDescCaption:
                  'Rambu Larangan ini sebuah symbol yang menandakan sebuah larangan tertentu dilakukan oleh pengguna jalan pada lalu lintas',
            ),
            SizedBox(
              height: 16,
            ),
            RambuVidPetunjukTile(
              imgUrl:
                  'https://imgx.gridoto.com/crop/77x97:693x497/700x465/photo/2020/12/30/2204122000.jpg',
              title: 'Rambu Petunjuk',
              descCaption:
                  'Rambu pendahulu petunjuk jurusan, rambu petunjuk jurusan dan rambu penegas jurusan yang menyatakan petunjuk arah untuk mencapai tujuan antara lain kota, daerah atau wilayah serta rambu yang menyatakan nama jalan dinyatakan dengan warna dasar hijau dengan lambang atau tulisan warna putih.',
            ),
            SizedBox(
              height: 16,
            ),
          ],
        )),
      );
    }

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            heading(),
            SizedBox(
              height: 24,
            ),
            body(),
          ],
        ),
      )),
    );
  }
}
