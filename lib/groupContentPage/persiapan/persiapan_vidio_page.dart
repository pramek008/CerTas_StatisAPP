import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lalinapp/widgets/persiapan_vid_tile.dart';
import 'package:lalinapp/theme.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PersiapanVidPage extends StatelessWidget {
  String vidioUrl;
  String title;
  String contentCount;
  String descCaption;

  PersiapanVidPage(
      {this.vidioUrl, this.title, this.descCaption, this.contentCount});

  Widget vidioPlayer() {
    return YoutubePlayer(
      controller: YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(vidioUrl),
        flags: YoutubePlayerFlags(
          controlsVisibleAtStart: true,
          autoPlay: true,
          mute: false,
        ),
      ),
      showVideoProgressIndicator: true,
      progressIndicatorColor: greenColor,
    );
  }

  Widget titleVid() {
    return Padding(
      padding: EdgeInsets.only(
        left: 24,
        right: 24,
        top: 18,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: txMedium.copyWith(
              fontSize: 20,
              height: 1.3,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            contentCount,
            style: txLight.copyWith(
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Divider(
            color: grayColor,
            thickness: 2,
          )
        ],
      ),
    );
  }

  Widget decsContent() {
    return Container(
      padding: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        top: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Apa isi konten ini?',
            style: txMedium.copyWith(fontSize: 14),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            descCaption,
            style: txLight.copyWith(fontSize: 14),
          )
        ],
      ),
    );
  }

  Widget otherContent() {
    return Container(
      padding: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        top: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Konten Lain',
            style: txMedium.copyWith(fontSize: 14),
          ),
          SizedBox(
            height: 14,
          ),
          Column(
            children: [
              PersiapanVidTile(
                imgUrl:
                    'https://cdn.medcom.id/dynamic/content/2020/06/18/1155544/kcHOhUVby3.JPG?w=480',
                title: 'Persiapan Berkendara Motor (Roda 2)',
                vidioUrl: 'https://www.youtube.com/watch?v=sUXu8iF3LhE',
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
                vidioUrl: 'https://www.youtube.com/watch?v=L1J1b3tL1u8',
                contentCount: 'Persiapan Berkendara 2/2',
                descCaption:
                    'Jauhnya jarak dari rumah ke tempat kerja kamu atau ke kampus terkadang membuat kamu tak punya pilihan lain untuk memakai kendaraan baik itu mobil atau motor. Membawa kendaraan adalah hal penting yang harus kamu perhatikan, karena jika tidak waspada dan hati-hati, kamu bisa mengalami kejadian yang tak diinginkan seperti kecelakaan.',
              ),
              SizedBox(
                height: 16,
              ),
            ],
          )
        ],
      ),
    );
  }

  // Future<bool> _onBackPreesed(){
  //   return Navigator.of(context).pop(false);
  // }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
        ]);
        // Navigator.of(context).pop();
        //we need to return a future
        return Future.value(true);
      },
      child: OrientationBuilder(
          // ignore: missing_return
          builder: (BuildContext buildContext, Orientation orientation) {
        if (orientation == Orientation.landscape) {
          return Scaffold(
            body: vidioPlayer(),
          );
        } else {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: greenColor,
              title: Text(title),
              centerTitle: true,
            ),
            body: SafeArea(
              child: ListView(
                children: [
                  vidioPlayer(),
                  titleVid(),
                  decsContent(),
                  otherContent(),
                ],
              ),
            ),
          );
        }
      }),
    );
  }
}
