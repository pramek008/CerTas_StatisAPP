// ignore_for_file: avoid_unnecessary_containers, file_names

import 'package:flutter/material.dart';
import 'package:lalinapp/widgets/etika_vid_tile.dart';
import 'package:lalinapp/widgets/persiapan_vid_tile.dart';

import 'package:lalinapp/pages/homepage.dart';
import 'package:lalinapp/theme.dart';
import 'package:lalinapp/widgets/card_itemlist_content.dart';
import 'package:lalinapp/widgets/persiapan_vid_tile.dart';

class EtikaListVid extends StatelessWidget {
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
                  'Etika dan Norma Berkendara',
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
              'Etika dalam arti sempit sering dipahami masyarakat sebagai sopan santun. Sedangkan etika secara umum/luas adalah suatu norma atau aturan yang dipakai sebagai pedoman dalam berperilaku di masyarakat bagi seseorang terkait dengan sifat baik dan buruk.',
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
            EtikaVidTile(
              imgUrl:
                  'https://cdn.idntimes.com/content-images/community/2019/07/07-driving-etiquette-rules-forgot-drivers-ed-merge-seb-ra-5d9d6117b3371112f93cf72ddb9df592_600x400.jpg',
              title: 'Etika dan Norma dalam Berkendara',
              vidioUrl: 'https://youtu.be/8QAPfsf8i30',
              contentCount: 'Etika dan Norma Berkendara 1 / 1',
              descCaption:
                  'Berisi tentang penjelasan apa itu Etika & Norma dalam berkendara pada saat berlalu lintas. Hal ini, dikarenakan salah satu faktor yang menjadi seringnya penyebab kecelakaan. Dengan adanya video ini diharapkan pengemudi dapat menjadi lebih mengerti dan cerdas dalam berkendara.',
            ),
            SizedBox(
              height: 16,
            ),
            // EtikaVidTile(
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
