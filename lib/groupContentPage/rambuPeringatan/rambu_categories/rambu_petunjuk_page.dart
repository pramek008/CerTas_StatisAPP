// ignore_for_file: avoid_unnecessary_containers, file_names

import 'package:flutter/material.dart';
import 'package:lalinapp/groupContentPage/rambuPeringatan/rambu_vidio_page.dart';
import 'package:lalinapp/pages/homepage.dart';
import 'package:lalinapp/theme.dart';
import 'package:lalinapp/widgets/rambu_vid_tile/rambu_vid_tile_detail.dart';

class RambuListVidPetunjuk extends StatelessWidget {
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

  RambuListVidPetunjuk({
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
                  title,
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
              descCaption,
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
            RambuVidTileContent(
              imgUrlContent:
                  'https://asset-a.grid.id/crop/0x0:0x0/x/photo/2020/09/16/1216763002.jpg',
              title: 'Rambu Petunjuk (Part 1)',
              vidioUrl: 'https://www.youtube.com/watch?v=ux4JyzIm_7M',
              contentCount: 'Rambu Petunjuk 1 / 3',
              descCaptionContent:
                  'Rambu petunjuk sangat berguna saat anda berada di jalan. Rambu ini akan mempermudah anda sehingga anda bisa tahu yang harus anda lakukan. Seperti contohnya jika anda menemukan jalan jalur ganda, maka akan ada rambu yang menunjukan jalan mana yang harus anda pilih.', //!
              otherImgUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcjEyB_x0iAh7Jkwqdq2hbcRw67clvWTQexg&usqp=CAU',
              otherVidioUrl: 'https://www.youtube.com/watch?v=gJ_7_B0clHw',
              otherTitle: 'Rambu Petunjuk (Part 2)',
              otherContentCount: 'Rambu Petunjuk 2 / 3',
              otherDescCaption:
                  'Rambu petunjuk sangat berguna saat anda berada di jalan. Rambu ini akan mempermudah anda sehingga anda bisa tahu yang harus anda lakukan. Seperti contohnya jika anda menemukan jalan jalur ganda, maka akan ada rambu yang menunjukan jalan mana yang harus anda pilih.', //!
            ),
            SizedBox(
              height: 16,
            ),
            RambuVidTileContent(
              imgUrlContent:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcjEyB_x0iAh7Jkwqdq2hbcRw67clvWTQexg&usqp=CAU',
              title: 'Rambu Petunjuk (Part 2)',
              vidioUrl: 'https://www.youtube.com/watch?v=gJ_7_B0clHw',
              contentCount: 'Rambu Petunjuk 2 / 3',
              descCaptionContent:
                  'Rambu petunjuk sangat berguna saat anda berada di jalan. Rambu ini akan mempermudah anda sehingga anda bisa tahu yang harus anda lakukan. Seperti contohnya jika anda menemukan jalan jalur ganda, maka akan ada rambu yang menunjukan jalan mana yang harus anda pilih.', //!
              otherImgUrl:
                  'https://kursusmengemudi.id/wp-content/uploads/2021/01/rambu-lalu-lintas-petunjuk.png',
              otherVidioUrl: 'https://www.youtube.com/watch?v=bC_GkF3psAk',
              otherTitle: 'Rambu Petunjuk (Part 3)',
              otherContentCount: 'Rambu Petunjuk 3 / 3',
              otherDescCaption:
                  'Rambu petunjuk sangat berguna saat anda berada di jalan. Rambu ini akan mempermudah anda sehingga anda bisa tahu yang harus anda lakukan. Seperti contohnya jika anda menemukan jalan jalur ganda, maka akan ada rambu yang menunjukan jalan mana yang harus anda pilih.', //!
            ),
            SizedBox(
              height: 16,
            ),
            RambuVidTileContent(
              imgUrlContent:
                  'https://kursusmengemudi.id/wp-content/uploads/2021/01/rambu-lalu-lintas-petunjuk.png',
              title: 'Rambu Petunjuk (Part 3)',
              vidioUrl: 'https://www.youtube.com/watch?v=bC_GkF3psAk',
              contentCount: 'Rambu Petunjuk 3 / 3',
              descCaptionContent:
                  'Rambu petunjuk sangat berguna saat anda berada di jalan. Rambu ini akan mempermudah anda sehingga anda bisa tahu yang harus anda lakukan. Seperti contohnya jika anda menemukan jalan jalur ganda, maka akan ada rambu yang menunjukan jalan mana yang harus anda pilih.', //!
              otherImgUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcjEyB_x0iAh7Jkwqdq2hbcRw67clvWTQexg&usqp=CAU',
              otherVidioUrl: 'https://www.youtube.com/watch?v=gJ_7_B0clHw',
              otherTitle: 'Rambu Petunjuk (Part 2)',
              otherContentCount: 'Rambu Petunjuk 2 / 3',
              otherDescCaption:
                  'Rambu petunjuk sangat berguna saat anda berada di jalan. Rambu ini akan mempermudah anda sehingga anda bisa tahu yang harus anda lakukan. Seperti contohnya jika anda menemukan jalan jalur ganda, maka akan ada rambu yang menunjukan jalan mana yang harus anda pilih.', //!
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
