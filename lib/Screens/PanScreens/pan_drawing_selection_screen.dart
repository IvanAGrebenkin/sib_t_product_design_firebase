import 'package:flutter/material.dart';
import '../../Utils/widgets.dart';

// Класс для объявления передаваемых аргумнтов
class PassedFromPanSelectionScreenArguments {
  final String panTypeValue;
  final String panShapeValue;
  final String panSizeValue;
  final String firstArt;
  final String secondArt;
  final String thirdArt;
  final String b;

  PassedFromPanSelectionScreenArguments(this.panTypeValue, this.panShapeValue, this.panSizeValue,this.firstArt,this.secondArt,this.thirdArt,this.b,);
}

class PanDrawingSelectionScreen extends StatelessWidget {
  const PanDrawingSelectionScreen({Key? key}) : super(key: key);
  get pageName => 'Выберите чертеж кастрюли';// Заголовок для AppBar


  static const routeName = '/pan_drawing_selection_screen';// Маршрут куда передаются аргументы


  @override
  Widget build(BuildContext context) {

    // Метод для доступа к класу, в котором объявлены передаваемые аргументы
    final args = ModalRoute.of(context)!.settings.arguments as PassedFromPanSelectionScreenArguments;

    return Scaffold(appBar: nextPageAppBar(context, pageName),
      drawer: navDrawer(context),
      body: Center(
        child: Column(
            children: [
              const SizedBox(height:20,),
              Text('Выбран тип: ${args.panTypeValue}'),// Вывод типа кастрюли
              const SizedBox(height:20,),
              Text('Выбрана форма: ${args.panShapeValue}'),// Вывод формы кастрюли
              const SizedBox(height:20,),
              Text('Выбрана вместимость: ${args.panSizeValue}'),// Вывод формы кастрюли
              const SizedBox(height:20,),
              Text('Артикул изделия: ${args.firstArt}${args.secondArt}${args.thirdArt}'),// Вывод артикула
              const SizedBox(height:20,),
              Text('Артикул изделия: ${args.b}'),// Вывод артикула
            ]
        ),
      ),
    );
  }
}