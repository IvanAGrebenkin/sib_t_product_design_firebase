import 'package:flutter/material.dart';
import '../../Utils/decoration.dart';
import '../../Utils/widgets.dart';
import 'household_items_drawing_view_screen.dart';

// Класс для объявления передаваемых аргумнтов
class PassedFromHouseholdItemsSelectionScreenArguments {
  final String householdItemsTypeValue;
  final String householdItemsShapeValue;
  final String householdItemsSizeValue;
  final String householdItemsArt;
  final String householdItemsName;

  PassedFromHouseholdItemsSelectionScreenArguments(
      this.householdItemsTypeValue,
      this.householdItemsShapeValue,
      this.householdItemsSizeValue,
      this.householdItemsArt,
      this.householdItemsName,);
}

class HouseholdItemsDrawings {
  final String householdItemsDrawingNumber;
  final String householdItemsDrawingName;
  final String currentHouseholdItemsDrawing;
  HouseholdItemsDrawings({
    required this.householdItemsDrawingNumber,
    required this.householdItemsDrawingName,
    required this.currentHouseholdItemsDrawing,
  });
}

class HouseholdItemsDrawingSelectionScreen extends StatefulWidget {
  const HouseholdItemsDrawingSelectionScreen({Key? key}) : super(key: key);
  static const routeName = '/household_items_drawing_selection_screen';
  @override
  State<HouseholdItemsDrawingSelectionScreen> createState() => _HouseholdItemsDrawingSelectionScreenState();
}

class _HouseholdItemsDrawingSelectionScreenState extends State<HouseholdItemsDrawingSelectionScreen> {
  get pageName => 'Выберите чертеж';
// Маршрут куда передаются аргументы
  @override
  Widget build(BuildContext context) {

    // Метод для доступа к класу, в котором объявлены передаваемые аргументы
    final argsFromHouseholdItemsSelectionScreen = ModalRoute.of(context)!.settings.arguments as PassedFromHouseholdItemsSelectionScreenArguments;

    final householdItemsDrawings2827 =[
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 99.01.СБ', householdItemsDrawingName: 'Корпус в сборе',currentHouseholdItemsDrawing: 'assets/drawings/pans/1607/ПЭ 99.01.СБ Корпус.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 33.01.01', householdItemsDrawingName: 'Корпус',currentHouseholdItemsDrawing: 'assets/drawings/pans/1607/ПЭ 33.01.01 Корпус.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 19.01.02.А', householdItemsDrawingName: 'Ручка 16',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 19.01.02.А Ручка 16.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 99.02.СБ', householdItemsDrawingName: 'Крышка с ручкой в сборе',currentHouseholdItemsDrawing: 'assets/drawings/lids/01607/ПЭ 99.02.СБ Крышка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 99.02-01.СБ', householdItemsDrawingName: 'Крышка с державкой в сборе',currentHouseholdItemsDrawing: 'assets/drawings/lids/01607/ПЭ 99.02-01.СБ Крышка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 99.02.01', householdItemsDrawingName: 'Крышка',currentHouseholdItemsDrawing: 'assets/drawings/lids/01607/ПЭ 99.02.01 Крышка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 07.02', householdItemsDrawingName: 'Ручка крышки',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 72.02.02', householdItemsDrawingName: 'Державка',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
    ];

    final householdItemsDrawings2829 =[
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 21.01.А.СБ', householdItemsDrawingName: 'Корпус в сборе',currentHouseholdItemsDrawing: 'assets/drawings/pans/1610/ПЭ 21.01.А.СБ Корпус.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 21.01.01', householdItemsDrawingName: 'Корпус',currentHouseholdItemsDrawing: 'assets/drawings/pans/1610/ПЭ 21.01.01 Корпус.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 19.01.02', householdItemsDrawingName: 'Ручка 18',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 19.01.02 Ручка 18.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 19.02.СБ', householdItemsDrawingName: 'Крышка с ручкой в сборе',currentHouseholdItemsDrawing: 'assets/drawings/lids/01610/ПЭ 19.02.СБ Крышка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 19.02-01.СБ', householdItemsDrawingName: 'Крышка с державкой в сборе',currentHouseholdItemsDrawing: 'assets/drawings/lids/01610/ПЭ 19.02-01.СБ Крышка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 19.02.01', householdItemsDrawingName: 'Крышка',currentHouseholdItemsDrawing: 'assets/drawings/lids/01610/ПЭ 19.02.01 Крышка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 19.02.01', householdItemsDrawingName: 'Крышка (из кружка)',currentHouseholdItemsDrawing: 'assets/drawings/lids/01610/ПЭ 19.02.01 Крышка (из кружка).webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 07.02', householdItemsDrawingName: 'Ручка крышки',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
      HouseholdItemsDrawings (householdItemsDrawingNumber: 'ПЭ 72.02.02', householdItemsDrawingName: 'Державка',currentHouseholdItemsDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
    ];

    List householdItemsDrawings = [];

    var currentArt=argsFromHouseholdItemsSelectionScreen.householdItemsArt;

    if (currentArt == '2827'){householdItemsDrawings=householdItemsDrawings2827;}
    else if (currentArt == '2829'){householdItemsDrawings=householdItemsDrawings2829;}
    // else if (currentArt == '1612'){panDrawings=panDrawings1612;}
    // else if (currentArt == '1617'){panDrawings=panDrawings1617;}
    // else if (currentArt == '1620'){panDrawings=panDrawings1620;}
    // else if (currentArt == '1622'){panDrawings=panDrawings1622;}
    // else if (currentArt == '1624'){panDrawings=panDrawings1624;}
    // else if (currentArt == '1626'){panDrawings=panDrawings1626;}
    // else if (currentArt == '1912'){panDrawings=panDrawings1912;}
    // else if (currentArt == '1917'){panDrawings=panDrawings1917;}
    // else if (currentArt == '1920'){panDrawings=panDrawings1920;}
    // else if (currentArt == '2512'){panDrawings=panDrawings2512;}
    // else if (currentArt == '2517'){panDrawings=panDrawings2517;}
    // else if (currentArt == '2520'){panDrawings=panDrawings2520;}
    // else if (currentArt == '1720'){panDrawings=panDrawings1720;}
    // else if (currentArt == '1722'){panDrawings=panDrawings1722;}
    // else if (currentArt == '1724'){panDrawings=panDrawings1724;}
    // else if (currentArt == 'MD161'){panDrawings=panDrawingsMD161;}
    // else if (currentArt == 'MD181'){panDrawings=panDrawingsMD181;}
    // else if (currentArt == 'MD201'){panDrawings=panDrawingsMD201;}
    // else if (currentArt == 'MD221'){panDrawings=panDrawingsMD221;}
    // else if (currentArt == 'MC161'){panDrawings=panDrawingsMC161;}
    // else if (currentArt == 'MC181'){panDrawings=panDrawingsMC181;}
    // else if (currentArt == 'MC201'){panDrawings=panDrawingsMC201;}
    // else if (currentArt == 'MC221'){panDrawings=panDrawingsMC221;}




    return Scaffold(
      appBar: panDrawingSelectionScreenAppBar(context, pageName),
      drawer: navDrawer(context),
      body: Container(
        decoration: backgroundOfOthersScreen,
        child: Column(
          children: [
            const SizedBox(height:20,),
            Text(argsFromHouseholdItemsSelectionScreen.householdItemsName),// Вывод наименования изделия
            const SizedBox(height:10,),
            Text('Арт. ${argsFromHouseholdItemsSelectionScreen.householdItemsArt}'),
            const SizedBox(height:10,),
            Expanded(
              child: SizedBox(height: 500,
                child: ListView.builder(
                    itemCount: householdItemsDrawings.length,
                    itemExtent: 150,
                    itemBuilder: (BuildContext context, int index){
                      final householdItemsDrawing = householdItemsDrawings[index];
                      final largeCurrentDrawing = householdItemsDrawing.currentHouseholdItemsDrawing;
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                color:const Color(0x434d9de0),
                              ),
                              child: Row(children: [
                                SizedBox(
                                    width: 150,
                                    height: 150,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image(image: AssetImage(householdItemsDrawing.currentHouseholdItemsDrawing)),
                                    )),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: double.infinity,
                                        child: Text('Чертеж № ${householdItemsDrawing.householdItemsDrawingNumber}',
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                                        child: Divider(
                                          color: Color(0x6dba0f1f),
                                          thickness: 2,
                                        ),
                                      ),
                                      Text(householdItemsDrawing.householdItemsDrawingName,
                                        textAlign: TextAlign.start,
                                        style: const TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],),
                            ),
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(25.0),
                                onTap: (){
                                  // Navigator.pushNamed(context, '/pan_drawing_view_screen');
                                  Navigator.pushNamed(
                                    context,
                                    HouseholdItemsDrawingViewScreen.routeName,
                                    arguments: PassedFromHouseholdItemsDrawingListArguments(
                                      largeCurrentDrawing,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

