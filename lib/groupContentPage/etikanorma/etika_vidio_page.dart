import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lalinapp/widgets/etika_vid_tile.dart';
import 'package:lalinapp/widgets/persiapan_vid_tile.dart';
import 'package:lalinapp/theme.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class EtikaVidPage extends StatelessWidget {
  String vidioUrl;
  String title;
  String contentCount;
  String descCaption;

  EtikaVidPage(
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
              EtikaVidTile(
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
              title: Text('Etika dan Norma'),
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
