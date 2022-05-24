import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';


class PassedFromFlatItemsSelectionScreenArguments {
  final String largeCurrentDrawing;

  PassedFromFlatItemsSelectionScreenArguments(this.largeCurrentDrawing,);
}


class FlatItemsDrawingViewScreen extends StatefulWidget {
  const FlatItemsDrawingViewScreen({Key? key}) : super(key: key);

  static const routeName = '/flat_item_drawing_view_screen';// Маршрут куда передаются аргументы

  @override
  State<FlatItemsDrawingViewScreen> createState() => _FlatItemsDrawingViewScreenState();
}

class _FlatItemsDrawingViewScreenState extends State<FlatItemsDrawingViewScreen> {
  get pageName => 'Просмотр чертежа';

  @override

  Widget build(BuildContext context) {

    // Метод для доступа к класу, в котором объявлены передаваемые аргументы
    final args = ModalRoute.of(context)!.settings.arguments as PassedFromFlatItemsSelectionScreenArguments;

    return MaterialApp(
      home: Scaffold(
        body: PhotoView(
          imageProvider: NetworkImage(args.largeCurrentDrawing),
          // imageProvider: AssetImage(args.largeCurrentDrawing),
        ),
      ),
    );
  }
}
