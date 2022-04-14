import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';


class PassedFromPanDrawingListArguments {
  final String largeCurrentDrawing;

  PassedFromPanDrawingListArguments(this.largeCurrentDrawing,);
}


class PanDrawingViewScreen extends StatefulWidget {
  const PanDrawingViewScreen({Key? key}) : super(key: key);

  static const routeName = '/pan_drawing_view_screen';// Маршрут куда передаются аргументы

  @override
  State<PanDrawingViewScreen> createState() => _PanDrawingViewScreenState();
}

class _PanDrawingViewScreenState extends State<PanDrawingViewScreen> {
  get pageName => 'Просмотр чертежа';

  @override


  Widget build(BuildContext context) {

    // Метод для доступа к класу, в котором объявлены передаваемые аргументы
    final args = ModalRoute.of(context)!.settings.arguments as PassedFromPanDrawingListArguments;

    return MaterialApp(
      home: Scaffold(
        body: PhotoView(
          imageProvider: AssetImage(args.largeCurrentDrawing),
        ),
      ),
    );
  }
}
