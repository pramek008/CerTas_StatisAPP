// ignore_for_file: avoid_unnecessary_containers, file_names

import 'package:flutter/material.dart';
import 'package:lalinapp/widgets/marka_vid_tile.dart';
import 'package:lalinapp/widgets/persiapan_vid_tile.dart';

import 'package:lalinapp/pages/homepage.dart';
import 'package:lalinapp/theme.dart';
import 'package:lalinapp/widgets/card_itemlist_content.dart';
import 'package:lalinapp/widgets/persiapan_vid_tile.dart';

class MarkaListVid extends StatelessWidget {
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
                  'Marka Jalan',
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
              'Marka jalan adalah suatu tanda yang berada di permukaan jalan atau di atas permukaan jalan yang meliputi peralatan atau tanda yang membentuk garis membujur, garis melintang, garis serong serta lambang lainnya yang berfungsi untuk mengarahkan arus lalu lintas dan membatasi daerah kepentingan lalu lintas.',
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
            MarkaVidTile(
              imgUrl:
                  'https://dishub.pringsewukab.go.id/po-content/uploads/marka.jpg',
              title: 'Penjelasan Mengenai Marka Jalan',
              vidioUrl: 'https://youtu.be/eTL1QixFcsI',
              contentCount: 'Marka Jalan 1 / 1',
              descCaption:
                  'Salah satu aturan yang harus dipahami oleh pengedara yaitu tentang Marka Jalan. Pengendara wajib memiliki pengetahuan tentang apa itu marka jalan dan harus mematuhi aturan tersebut. ',
            ),
            SizedBox(
              height: 16,
            ),
            // MarkaVidTile(
            //   imgUrl: '',
            //   title: '',
            //   vidioUrl: '',
            //   contentCount: '',
            //   descCaption: '',
            // ),
            // SizedBox(
            //   height: 16,
            // ),
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
