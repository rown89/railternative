import 'package:Railternative/screens/home/components/Player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:async';
import 'package:webview_flutter/webview_flutter.dart';
import './../../_services/getData.dart';
import './../../_jsonModels/onAir.dart';
import './../../_jsonModels/index.dart';
import './components/Player.dart';

import 'package:cached_network_image/cached_network_image.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Completer<WebViewController> _controller = Completer<WebViewController>();
  bool _isLoading;
  bool _isImgLoading;
  String activeChannel;
  String selectedChan;
  Future futureChannels;
  Future futureIndex;

  @override
  void initState() {
    super.initState();
    _isLoading = true;
    _isImgLoading = true;
    activeChannel = "rai1";
    selectedChan = "Rai 1";
    futureChannels = getChannels();
    futureIndex = getIndexPage();
  }

  Future<OnAir> getChannels() async => await HttpService.getOnAir();
  Future<IndexPage> getIndexPage() async => await HttpService.getIndex();

  displayChannels() {
    return FutureBuilder<WebViewController>(
        future: _controller.future,
        builder: (BuildContext context,
            AsyncSnapshot<WebViewController> controller) {
          if (controller.hasData) {
            return FutureBuilder(
              future: futureChannels,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                //SNAPSHOT NO DATA
                if (!snapshot.hasData) {
                  return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            width: 30,
                            height: 30,
                            child: CircularProgressIndicator()),
                      ]);
                }
                //SNAPSHOT ERROR
                if (snapshot.hasError)
                  return Text("Error, cant retrieve Channels");
                //SNAPSHOT HAS DATA
                return ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Row(children: <Widget>[
                        ...snapshot.data.onAir.map(
                          (OnAirElement list) => FlatButton(
                            color: selectedChan == list.channel
                                ? Colors.blueAccent
                                : Colors.white,
                            textColor: selectedChan == list.channel
                                ? Colors.white
                                : Colors.blueGrey[900],
                            disabledColor: Colors.grey,
                            onPressed: () {
                              setState(() {
                                selectedChan = list.channel;
                                activeChannel = list.channel
                                    .replaceAll(" ", "")
                                    .toLowerCase();
                                controller.data.loadUrl('https://www.raiplay.it/dirette/${activeChannel}?autoplay');
                              });
                            },
                            child: Text(list.channel,
                                style: TextStyle(fontSize: 15)),
                          ),
                        ),
                      ]),
                    ]);
              },
            );
          }
          return Container(child: Text('No Channels data'));
        });
  }

  _gridView() {
    return FutureBuilder<IndexPage>(
        future: futureIndex,
        builder: (BuildContext context, AsyncSnapshot<IndexPage> snapshot) {
          //SNAPSHOT NO DATA
          if (!snapshot.hasData) {
            return Container(
                height: 40, child: Center(child: CircularProgressIndicator()));
          }
          //SNAPSHOT ERROR
          if (snapshot.hasError) {
            return Text("sry, cant show OnDemand right now");
          }
          //SNAPSHOT HAS DATA
          final contents =
              snapshot.data.contents[1].contents.map((ContentContent e) => e);

          return GridView.count(
            physics: AlwaysScrollableScrollPhysics(),
            crossAxisCount: 3,
            childAspectRatio: 0.7,
            mainAxisSpacing: 6,
            crossAxisSpacing: 6,
            shrinkWrap: true,
            children: [
              ...contents.map(
                (e) => GestureDetector(
                  onTap: () {
                    print(e.name);
                  },
                  child: CachedNetworkImage(
                    imageUrl: 'https://www.raiplay.it${e.images.portraitLogo}',
                    fit: BoxFit.cover,
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) => Container(
                            width: 30,
                            height: 30,
                            child: Center(
                                child: LinearProgressIndicator(
                                    value: downloadProgress.progress))),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
              )
            ].toList(),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Railternative",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey[900],
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.lightBlue,
                size: 30,
              ),
              onPressed: () {}),
        ],
      ),
      body: AnimatedContainer(
        duration: Duration(milliseconds: 250),
        color: Colors.white,
        child: Container(
            child: Column(children: [
          Player(
              controller: _controller,
              activeChannel: activeChannel,
              isLoading: _isLoading),
          Container(height: 35, child: displayChannels()),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                alignment: Alignment(0.0, 0.0),
                child: Text(
                  "OnDemand - Da non perdere",
                  style: TextStyle(
                      color: Colors.blueGrey[400],
                      fontWeight: FontWeight.bold,
                      fontSize: 1),
                ),
              )
            ],
          ),
          Flexible(child: _gridView()),
        ])),
      ),
    );
  }
}
