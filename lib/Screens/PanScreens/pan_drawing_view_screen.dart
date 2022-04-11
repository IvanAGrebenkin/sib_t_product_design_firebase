import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class PanDrawingViewScreen extends StatelessWidget {
  const PanDrawingViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PhotoView(
          imageProvider: const AssetImage('assets/drawings/pans/1607/ПЭ 99.01.СБ Корпус.webp'),
        ),
      ),
    );
  }
}
