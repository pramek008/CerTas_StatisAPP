import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lalinapp/widgets/marka_vid_tile.dart';
import 'package:lalinapp/widgets/persiapan_vid_tile.dart';
import 'package:lalinapp/theme.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MarkaVidPage extends StatelessWidget {
  String vidioUrl;
  String title;
  String contentCount;
  String descCaption;

  MarkaVidPage(
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
              MarkaVidTile(
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
