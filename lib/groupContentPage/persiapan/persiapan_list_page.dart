// ignore_for_file: avoid_unnecessary_containers, file_names

import 'package:flutter/material.dart';
import 'package:lalinapp/widgets/persiapan_vid_tile.dart';

import 'package:lalinapp/pages/homepage.dart';
import 'package:lalinapp/theme.dart';
import 'package:lalinapp/widgets/card_itemlist_content.dart';
import 'package:lalinapp/widgets/persiapan_vid_tile.dart';

class PersiapanListVid extends StatelessWidget {
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
                  'Persiapan Berkendara',
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
              'Dalam berkendara, keselamatan tentunya harus menjadi prioritas daripada pencapaian ke tempat tujuan. Untuk itu, persiapan yang baik perlu dilakukan sebelum berkendara, baik untuk jarak dekat maupun jarak jauh, sehingga potensi keselamatan Anda dalam berkendara semakin meningkat',
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
            PersiapanVidTile(
              imgUrl:
                  'https://cdn.medcom.id/dynamic/content/2020/06/18/1155544/kcHOhUVby3.JPG?w=480',
              title: 'Persiapan Berkendara Motor (Roda 2)',
              vidioUrl: 'https://youtu.be/qWiT5JTQrI8',
              contentCount: 'Persiapan Berkendara 1/2',
              descCaption:
                  'Dalam berkendara, keselamatan tentunya harus menjadi prioritas daripada pencapaian ke tempat tujuan. Untuk itu, persiapan yang baik perlu dilakukan sebelum berkendara, baik untuk jarak dekat maupun jarak jauh, sehingga potensi keselamatan Anda dalam berkendara semakin meningkat. Berikut adalah beberapa hal yang perlu dipersiapkan sebelum berkendara.',
            ),
            SizedBox(
              height: 16,
            ),
            PersiapanVidTile(
              imgUrl:
                  'https://assets.mitsubishi-motors.co.id/articles/1587563627-whatsapp-image-2020-04-22-at-130627jpeg.jpeg',
              title: 'Persiapan Berkendara Mobil (Roda 4)',
              vidioUrl: 'https://youtu.be/LsEiFv_Uabc',
              contentCount: 'Persiapan Berkendara 2/2',
              descCaption:
                  'Jauhnya jarak dari rumah ke tempat kerja kamu atau ke kampus terkadang membuat kamu tak punya pilihan lain untuk memakai kendaraan baik itu mobil atau motor. Membawa kendaraan adalah hal penting yang harus kamu perhatikan, karena jika tidak waspada dan hati-hati, kamu bisa mengalami kejadian yang tak diinginkan seperti kecelakaan.',
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
