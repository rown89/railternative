import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:async';
import 'package:webview_flutter/webview_flutter.dart';
import './../../../_services/getData.dart';
import './../../../_jsonModels/onAir.dart';

class Player extends StatefulWidget {
  Player({Key key, this.controller, this.activeChannel, this.isLoading})
      : super(key: key);
  final bool isLoading;
  final String activeChannel;
  final Completer<WebViewController> controller;

  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  bool isLoading;
  String activeChannel;
  Completer<WebViewController> controller;

  @override
  void initState() {
    super.initState();
    isLoading = widget.isLoading;
    activeChannel = widget.activeChannel;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width / 2,
          child: DecoratedBox(
            decoration: BoxDecoration(color: Colors.white),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.all(20),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width / 1.90,
                  child: GestureDetector(
                      onVerticalDragUpdate: (_) {},
                      child: WebView(
                        initialUrl:
                            'https://www.raiplay.it/dirette/${activeChannel}?autoplay',
                        javascriptMode: JavascriptMode.unrestricted,
                        onWebViewCreated: (WebViewController controller) {
                          widget.controller.complete(controller);
                        },
                        onPageStarted: (controller) async {
                          setState(() {
                            isLoading = true;
                          });
                        },
                        onPageFinished: (controller) async {
                          (await widget.controller.future).evaluateJavascript(
                              """setTimeout(() => {document.getElementsByClassName("rai-player-dockbar")[0].remove();document.getElementsByClassName("vjs-control-bar")[0].remove();document.getElementById("iubenda-cs-banner").remove();}, 1200);""");
                          Timer(
                              Duration(seconds: 2),
                              () => setState(() {
                                    isLoading = false;
                                  }));
                        },
                      )),
                ),
              ),
            ),
          ],
        ),
        isLoading
            ? SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                child: Container(
                    margin: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(color: Colors.black),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            child: CircularProgressIndicator(),
                          )
                        ])),
              )
            : Container(),
      ],
    );
  }
}
