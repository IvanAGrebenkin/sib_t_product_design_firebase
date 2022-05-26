import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';


class PassedFromKettleDrawingListArguments {
  final String largeCurrentDrawing;

  PassedFromKettleDrawingListArguments(this.largeCurrentDrawing,);
}


class KettleDrawingViewScreen extends StatefulWidget {
  const KettleDrawingViewScreen({Key? key}) : super(key: key);

  static const routeName = '/kettle_drawing_view_screen';// Маршрут куда передаются аргументы

  @override
  State<KettleDrawingViewScreen> createState() => _KettleDrawingViewScreenState();
}

class _KettleDrawingViewScreenState extends State<KettleDrawingViewScreen> {
  get pageName => 'Просмотр чертежа';

  @override

  Widget build(BuildContext context) {

    // Метод для доступа к класу, в котором объявлены передаваемые аргументы
    final args = ModalRoute.of(context)!.settings.arguments as PassedFromKettleDrawingListArguments;

    return MaterialApp(
      home: Scaffold(
        body: PhotoView(
          // imageProvider: AssetImage('assets/drawings/pans/1607/ПЭ 33.01.01 Корпус.webp'),
          imageProvider: NetworkImage(args.largeCurrentDrawing),
        ),
      ),
    );
  }
}
