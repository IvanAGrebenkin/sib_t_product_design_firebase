import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

import '../../Utils/widgets.dart';

class PanDrawingViewScreen extends StatefulWidget {
  const PanDrawingViewScreen({Key? key}) : super(key: key);

  @override
  State<PanDrawingViewScreen> createState() => _PanDrawingViewScreenState();
}

class _PanDrawingViewScreenState extends State<PanDrawingViewScreen> {
  get pageName => 'Просмотр чертежа';



  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(

        appBar: drawingViewScreenPageAppBar(context, pageName),
        body: PhotoView(
          imageProvider: const AssetImage('assets/drawings/pans/1607/ПЭ 99.01.СБ Корпус.webp'),
        ),
      ),
    );
  }
}
