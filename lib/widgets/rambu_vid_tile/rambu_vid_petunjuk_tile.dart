import 'package:flutter/material.dart';
import 'package:lalinapp/groupContentPage/persiapan/persiapan_vidio_page.dart';
import 'package:lalinapp/groupContentPage/rambuPeringatan/rambu_categories/rambu_categori_page.dart';
import 'package:lalinapp/groupContentPage/rambuPeringatan/rambu_categories/rambu_petunjuk_page.dart';
import 'package:lalinapp/groupContentPage/rambuPeringatan/rambu_vidio_page.dart';

import 'package:lalinapp/pages/textcontent_page.dart';

import 'package:lalinapp/theme.dart';

class RambuVidPetunjukTile extends StatelessWidget {
  String imgUrl;
  String title;
  String descCaption;

  // String imgUrlContent;
  // String vidioUrl;
  // String contentCount;
  // String descCaptionContent;
  // String otherImgUrl;
  // String otherVidioUrl;
  // String otherTitle;
  // String otherContentCount;
  // String otherDescCaption;

  RambuVidPetunjukTile({
    this.imgUrl,
    this.title,
    this.descCaption,
    // this.imgUrlContent,
    // this.vidioUrl,
    // this.contentCount,
    // this.descCaptionContent,
    // this.otherImgUrl,
    // this.otherVidioUrl,
    // this.otherTitle,
    // this.otherContentCount,
    // this.otherDescCaption
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RambuListVidPetunjuk(
                title: title,
                descCaption: descCaption,
              ),
            ));
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 7,
        ),
        width: MediaQuery.of(context).size.width,
        height: 104,
        decoration: BoxDecoration(
          color: whiteColorBg,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
            ),
          ],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(7.5),
              child: Image.network(
                // 'https://asset.kompas.com/crops/Cp-fe8FUljrgIlGcVOKkJGcB4bc=/15x0:600x390/750x500/data/photo/2019/12/17/5df896712d870.jpg',
                imgUrl,
                height: 88,
                width: 85,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Flexible(
              child: Text(
                // 'Kamu Wajib Punya Surat Izin Mengemudi (SIM)',
                title,
                style: txMedium.copyWith(fontSize: 15, height: 1.5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
