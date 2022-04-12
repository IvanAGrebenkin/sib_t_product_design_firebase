import 'package:flutter/material.dart';
import 'package:sib_t_product_design/Screens/PanScreens/pan_drawing_list.dart';
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

    return Scaffold(
        appBar: panDrawingSelectionScreenAppBar(context, pageName),
        drawer: navDrawer(context),
        body: Container(
          decoration: backgroundOfOthersScreen,
          child: Column(
            children: [
              const SizedBox(height:20,),
              Text(args.panName),// Вывод наименования изделия
              const SizedBox(height:10,),
              Text('Арт. ${args.art}'),
              const SizedBox(height:20,),
              ElevatedButton(
                onPressed: (){Navigator.pushNamed(context, '/pan_drawing_view_screen');
                },
                child: const Text('Показать чертеж'),),
              const SizedBox(height:20,),
              Expanded(
                child: SizedBox(height: 500,
                  child: PanDrawingListWidget(),
                ),
              ),

            ],
          ),
        ),
      )
    ;
  }
}

