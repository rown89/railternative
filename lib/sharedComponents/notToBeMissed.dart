import 'package:Railternative/_jsonModels/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:async';
import './../_services/getData.dart';
import './../_jsonModels/index.dart';
import 'package:cached_network_image/cached_network_image.dart';

class NotToBeMissed extends StatefulWidget {
  NotToBeMissed({Key key}) : super(key: key);

  @override
  _NotToBeMissed createState() => _NotToBeMissed();
}

class _NotToBeMissed extends State<NotToBeMissed> {
  String title = "";

  bool _isLoading;
  String activeChannel;
  String selectedChan;
  Future futureIndex;

  @override
  void initState() {
    super.initState();
    _isLoading = true;
    futureIndex = getIndexPage();
  }

  Future<IndexPage> getIndexPage() async => await HttpService.getIndex();

  @override
  Widget build(BuildContext context) {
    return Text("");
  }
}
