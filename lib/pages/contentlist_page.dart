// ignore_for_file: avoid_unnecessary_containers, missing_return, prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lalinapp/model/syarat_data.dart';
import 'package:lalinapp/pages/homepage.dart';
import 'package:lalinapp/theme.dart';
import 'package:lalinapp/widgets/card_itemlist_content.dart';
import 'package:provider/provider.dart';

class ContentList extends StatelessWidget {
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
                  'Syarat Berkendara',
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
              'Bagi kamu yang memiliki aktivitas berlalu lintas mungkin ada baiknya memperhatikan aturan-aturan berikut ini. Jangan sampai kamu dihukum karena melanggar aturan. Tak hanya itu saja, kamu juga mesti taat aturan untuk keselamatan berlalu lintas.',
              style: txLight.copyWith(fontSize: 14, height: 1.5),
            )
          ],
        ),
      );
    }

    Widget body() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          children: [
            ItemContentTile(
              title: 'Kartu Tanda Penduduk (KTP)',
              imageUrl: 'assets/txContent/ktp.png',
              content:
                  'KTP ( Kartu Tanda Penduduk ) adalah identitas resmi seorang penduduk sebagai bukti diri yang diterbitkan oleh instansi pelaksana yang berlaku di seluruh wilayah Negara Kesatuan Republik Indonesia. \n\n Manfaat dari KTP atau Kartu Tanda Penduduk :',
              textItem: [
                'KTP digunakan sebagai Kartu Identitas Diri.',
                'KTP merupakan syarat utama dalam banyak hal.',
                'Kepemilikan KTP sebagai jaminan yang terpercaya'
              ],
            ),
            ItemContentTile(
                title: 'Kamu Wajib Punya Surat Izin Mengemudi (SIM)',
                imageUrl: 'assets/txContent/sim.jpg',
                content:
                    'Setiap orang wajib memiliki Surat Izin Mengemudi (SIM) yang diterbitkan Polri. Untuk dapat mengemudikan kendaraan bermotor di Jalan. Prosedur pembuatannya mudah dengan proses yang transparan. Setiap pemohonnya harus memenuhi syarat-syarat tertentu seperti persyaratan usia, administratif, kesehatan dan lulus ujian untuk dapat memperolehnya. \n\nBerikut ini adalah fungsi Surat Izin Mengemudi (SIM) berdasarkan Undang-Undang RI Nomor 22 Tahun 2009 Tentang Lalu Lintas Dan Angkutan Jalan, Pasal 86.',
                textItem: [
                  'Surat Izin Mengemudi berfungsi sebagai bukti kompetensi mengemudi.',
                  'Surat Izin Mengemudi berfungsi sebagai registrasi Pengemudi Kendaraan Bermotor yang memuat keterangan identitas lengkap Pengemudi.',
                  'Data pada registrasi Pengemudi dapat digunakan untuk mendukung kegiatan penyelidikan, penyidikan, dan identifikasi forensik kepolisian.'
                ]),
            ItemContentTile(
                title: 'Kamu Wajib Membawa Surat Tanda Nomor Kendaraan (STNK)',
                imageUrl: 'assets/txContent/stnk.jpg',
                content:
                    'STNK adalah singkatan dari Surat Tanda Nomor Kendaraan. Di Indonesia sendiri, STNK diterbitkan oleh Samsat yang merupakan tempat pelayanan penerbitan dan pengesahan. Tentunya didukung oleh tiga instansi, yakni Polri, Dinas Pendapatan Provisi, dan PT Jasa Raharja. STNK dan SIM memang menjadi bagian penting dari surat resmi yang wajib dimiliki ketika ingin membawa mobil sendiri. Di dalam Surat Tanda Nomor Kendaraan (STNK) terdapat beberapa kolom. Dimulai dari identitas kepemilikan plat nomor polisi, nama & alamat pemilik mobil, hingga identitas mobil tersebut',
                textItem: [
                  'merk/tipe, model/jenis kendaraan, tahun pembuatan, tahun perakitan, warna,',
                ]),
            ItemContentTile(
                title: 'Pelat Nomor Kendaraan Harus Kamu Pasang',
                imageUrl: 'assets/txContent/platnomor.png',
                content:
                    'Salah satu kewajiban yang harus dipenuhi oleh pemilik kendaraan bermotor roda dua atau lebih, adalah memasang plat nomor di bagian depan maupun belakang kendaraannya. Tentu saja, plat yang dimaksud adalah tanda nomor identitas kendaraan yang telah ditetapkan oleh Kepolisian Negara Republik Indonesia.',
                textItem: [
                  'Ketentuan ini tercantum dalam Undang-Undang Nomor 22 Tahun 2009 tentang Lalu Lintas Dan Angkutan Jalan pasal 68 ayat 1, yang berbunyi: \"Setiap Kendaraan Bermotor yang dioperasikan di Jalan wajib dilengkapi dengan Surat Tanda Nomor Kendaraan Bermotor dan Tanda Nomor Kendaraan Bermotor.\"',
                ]),
          ],
        ),
      );

      // return Padding(
      //   padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      //   child: FutureBuilder<List<SyaratBerkendaraData>>(
      //       future: syaratProvider.getArticle(),
      //       builder: (context, snapshot) => Column(
      //             children: snapshot.data
      //                 .map((e) => ItemContentTile(
      //                       articleModel: e,
      //                     ))
      //                 .toList(),
      //           )),
      // );

      //   return FutureBuilder(
      //     future: getArticle(),
      //     builder: (context, snapshot) {
      //       if (snapshot.hasError) {
      //         return Center(child: Text("${snapshot.error}"));
      //       } else if (snapshot.hasData) {
      //         var items = snapshot.data as List<SyaratBerkendaraData>;
      //         return ListView.builder(
      //           itemCount: items == null ? 0 : items.length,
      //           itemBuilder: (context, index) {
      //             return ItemContentTile(
      //               title: items[index].title,
      //               imageUrl: items[index].imageUrl,
      //             );
      //           },
      //         );
      //       } else {
      //         return Center(
      //           child: CircularProgressIndicator(),
      //         );
      //       }
      //     },
      //   );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            heading(),
            SizedBox(
              height: 24,
            ),
            body(),
          ],
        ),
      ),
    );

    //   return Scaffold(
    //     body: body(),
    //   );
  }
}
