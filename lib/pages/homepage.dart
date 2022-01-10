// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:lalinapp/groupContentPage/etikanorma/card_item_menu_vid.dart';
import 'package:lalinapp/groupContentPage/marka/card_item_menu_vid.dart';
import 'package:lalinapp/groupContentPage/rambuPeringatan/card_item_menu_vid.dart';
import 'package:lalinapp/theme.dart';
import 'package:lalinapp/widgets/card_item_menu.dart';
import 'package:lalinapp/groupContentPage/persiapan/card_item_menu_vid.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget head() {
      return Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin,
              vertical: 17,
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Temukan Topik Informasi',
                  style: txBold.copyWith(
                    fontSize: 20,
                    color: blackColor,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Salah satu aturan yang harus dipahami oleh pengedara yaitu tentang Marka Jalan. Pengendara wajib memiliki pengetahuan tentang apa itu marka jalan dan harus mematuhi aturan tersebut. Tersedia berbagai macam materi yang dapat diakses dijelaskan dengan teks hingga berupa vidio.',
                  style: txLight.copyWith(
                    fontSize: 14,
                    color: blackColor,
                    letterSpacing: 1.5,
                    height: 1.5,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'Pilih Jenis Materi',
            style: txMedium.copyWith(fontSize: 18),
          )
        ],
      );
    }

    Widget menuItemCard() {
      return Expanded(
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          padding: EdgeInsets.only(
              left: defaultMargin,
              right: 20,
              bottom: defaultMargin,
              top: defaultMargin),
          children: [
            CardMenu(
              imgUrl: 'assets/syarat.png',
              title: 'Syarat Berkendara',
            ),
            PersiapanCardMenu(
              imgUrl: 'assets/persiapan.jpg',
              title: 'Persiapan Berkendara',
            ),
            RambuCardMenu(
              imgUrl: 'assets/rambu.png',
              title: 'Rambu - Rambu',
            ),
            MarkaCardMenu(
              imgUrl: 'assets/marka.jpg',
              title: 'Marka Jalan',
            ),
            EtikaCardMenu(
              imgUrl: 'assets/etikanorma.png',
              title: 'Etika dan Norma',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              head(),
              SizedBox(
                height: 8,
              ),
              menuItemCard(),
            ],
          ),
        ),
      ),
    );
  }
}
