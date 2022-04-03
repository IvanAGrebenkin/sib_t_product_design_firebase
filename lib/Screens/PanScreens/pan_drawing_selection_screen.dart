import 'package:flutter/material.dart';
import '../../Utils/decoration.dart';
import '../../Utils/widgets.dart';

// Класс для объявления передаваемых аргумнтов
class PassedFromPanSelectionScreenArguments {
  final String panTypeValue;
  final String panShapeValue;
  final String panSizeValue;
  final String art;
  final String panName;

  PassedFromPanSelectionScreenArguments(this.panTypeValue, this.panShapeValue, this.panSizeValue,this.art, this.panName,);
}

class PanDrawingSelectionScreen extends StatelessWidget {
const PanDrawingSelectionScreen({Key? key}) : super(key: key);
  get pageName => 'Выберите чертеж\n кастрюли';// Заголовок для AppBar

  static const routeName = '/pan_drawing_selection_screen';// Маршрут куда передаются аргументы

  @override
  Widget build(BuildContext context) {

    // Метод для доступа к класу, в котором объявлены передаваемые аргументы
    final args = ModalRoute.of(context)!.settings.arguments as PassedFromPanSelectionScreenArguments;

    return MaterialApp(
      home: Scaffold(
        appBar: panDrawingSelectionScreenAppBar(context, pageName),
        drawer: navDrawer(context),
        body: Container(
          decoration: backgroundOfOthersScreen,// Задание фонового изображения
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: MediaQuery.of(context).size.width,
                minHeight: MediaQuery.of(context).size.height,
              ),// Ограничения в соответствии с разрешением экрана устройства
              child: IntrinsicHeight(
                child: Column(
                    children: [
                      const SizedBox(height:20,),
                      const Text('Наименование изделия:'),// Заголовок
                      Text(args.panName),// Вывод наименования изделия
                      const SizedBox(height:20,),
                      Text('Артикул изделия: ${args.art}'),// Вывод артикула
                    ]
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}