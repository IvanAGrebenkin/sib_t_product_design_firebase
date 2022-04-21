import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';


class PassedFromHouseholdItemsDrawingListArguments {
  final String largeCurrentDrawing;

  PassedFromHouseholdItemsDrawingListArguments(this.largeCurrentDrawing,);
}


class HouseholdItemsDrawingViewScreen extends StatefulWidget {
  const HouseholdItemsDrawingViewScreen({Key? key}) : super(key: key);

  static const routeName = '/household_items_drawing_view_screen';// Маршрут куда передаются аргументы

  @override
  State<HouseholdItemsDrawingViewScreen> createState() => _HouseholdItemsDrawingViewScreenState();
}

class _HouseholdItemsDrawingViewScreenState extends State<HouseholdItemsDrawingViewScreen> {
  get pageName => 'Просмотр чертежа';

  @override

  Widget build(BuildContext context) {

    // Метод для доступа к класу, в котором объявлены передаваемые аргументы
    final args = ModalRoute.of(context)!.settings.arguments as PassedFromHouseholdItemsDrawingListArguments;

    return MaterialApp(
      home: Scaffold(
        body: PhotoView(
          imageProvider: AssetImage(args.largeCurrentDrawing),
        ),
      ),
    );
  }
}
