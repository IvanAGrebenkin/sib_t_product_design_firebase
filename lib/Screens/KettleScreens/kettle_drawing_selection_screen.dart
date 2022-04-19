import 'package:flutter/material.dart';
import '../../Utils/decoration.dart';
import '../../Utils/widgets.dart';
import 'kettle_drawing_view_screen.dart';

class PassedFromKettleSelectionScreenArguments {
  final String kettleArt;
  final String kettleName;

  PassedFromKettleSelectionScreenArguments(this.kettleArt, this.kettleName,);
}

class KettleDrawings {
  final String kettleDrawingNumber;
  final String kettleDrawingName;
  final String currentKettleDrawing;
  KettleDrawings({
    required this.kettleDrawingNumber,
    required this.kettleDrawingName,
    required this.currentKettleDrawing,
  });
}

class KettleDrawingSelectionScreen extends StatefulWidget {
  const KettleDrawingSelectionScreen({Key? key}) : super(key: key);
  static const routeName = '/kettle_drawing_selection_screen';
  @override
  State<KettleDrawingSelectionScreen> createState() => _KettleDrawingSelectionScreenState();
}

class _KettleDrawingSelectionScreenState extends State<KettleDrawingSelectionScreen> {
  get pageName => 'Выберите чертеж';

  @override
  Widget build(BuildContext context) {
    // Метод для доступа к класу, в котором объявлены передаваемые аргументы
    final argsFromKettleSelectionScreen = ModalRoute.of(context)!.settings.arguments as PassedFromKettleSelectionScreenArguments;

    final kettleDrawings2707 =[
      KettleDrawings (kettleDrawingNumber: 'ПЭ 99.01.СБ', kettleDrawingName: 'Корпус в сборе',currentKettleDrawing: 'assets/drawings/pans/1607/ПЭ 99.01.СБ Корпус.webp',),
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 33.01.01', kettleDrawingName: 'Корпус',currentKettleDrawing: 'assets/drawings/pans/1607/ПЭ 33.01.01 Корпус.webp',),
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 19.01.02.А', kettleDrawingName: 'Ручка 16',currentKettleDrawing: 'assets/drawings/fittings/ПЭ 19.01.02.А Ручка 16.webp',),
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 99.02.СБ', kettleDrawingName: 'Крышка с ручкой в сборе',currentKettleDrawing: 'assets/drawings/lids/01607/ПЭ 99.02.СБ Крышка.webp',),
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 99.02-01.СБ', kettleDrawingName: 'Крышка с державкой в сборе',currentKettleDrawing: 'assets/drawings/lids/01607/ПЭ 99.02-01.СБ Крышка.webp',),
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 99.02.01', kettleDrawingName: 'Крышка',currentKettleDrawing: 'assets/drawings/lids/01607/ПЭ 99.02.01 Крышка.webp',),
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 07.02', kettleDrawingName: 'Ручка крышки',currentKettleDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 72.02.02', kettleDrawingName: 'Державка',currentKettleDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
    ];

    final kettleDrawings2713 =[
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 99.01.СБ', kettleDrawingName: 'Корпус в сборе',currentKettleDrawing: 'assets/drawings/pans/1607/ПЭ 99.01.СБ Корпус.webp',),
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 33.01.01', kettleDrawingName: 'Корпус',currentKettleDrawing: 'assets/drawings/pans/1607/ПЭ 33.01.01 Корпус.webp',),
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 19.01.02.А', kettleDrawingName: 'Ручка 16',currentKettleDrawing: 'assets/drawings/fittings/ПЭ 19.01.02.А Ручка 16.webp',),
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 99.02.СБ', kettleDrawingName: 'Крышка с ручкой в сборе',currentKettleDrawing: 'assets/drawings/lids/01607/ПЭ 99.02.СБ Крышка.webp',),
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 99.02-01.СБ', kettleDrawingName: 'Крышка с державкой в сборе',currentKettleDrawing: 'assets/drawings/lids/01607/ПЭ 99.02-01.СБ Крышка.webp',),
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 99.02.01', kettleDrawingName: 'Крышка',currentKettleDrawing: 'assets/drawings/lids/01607/ПЭ 99.02.01 Крышка.webp',),
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 07.02', kettleDrawingName: 'Ручка крышки',currentKettleDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 72.02.02', kettleDrawingName: 'Державка',currentKettleDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
    ];

    final kettleDrawings2714 =[
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 99.01.СБ', kettleDrawingName: 'Корпус в сборе',currentKettleDrawing: 'assets/drawings/pans/1607/ПЭ 99.01.СБ Корпус.webp',),
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 33.01.01', kettleDrawingName: 'Корпус',currentKettleDrawing: 'assets/drawings/pans/1607/ПЭ 33.01.01 Корпус.webp',),
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 19.01.02.А', kettleDrawingName: 'Ручка 16',currentKettleDrawing: 'assets/drawings/fittings/ПЭ 19.01.02.А Ручка 16.webp',),
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 99.02.СБ', kettleDrawingName: 'Крышка с ручкой в сборе',currentKettleDrawing: 'assets/drawings/lids/01607/ПЭ 99.02.СБ Крышка.webp',),
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 99.02-01.СБ', kettleDrawingName: 'Крышка с державкой в сборе',currentKettleDrawing: 'assets/drawings/lids/01607/ПЭ 99.02-01.СБ Крышка.webp',),
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 99.02.01', kettleDrawingName: 'Крышка',currentKettleDrawing: 'assets/drawings/lids/01607/ПЭ 99.02.01 Крышка.webp',),
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 07.02', kettleDrawingName: 'Ручка крышки',currentKettleDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 72.02.02', kettleDrawingName: 'Державка',currentKettleDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
    ];

    final kettleDrawings2716 =[
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 99.01.СБ', kettleDrawingName: 'Корпус в сборе',currentKettleDrawing: 'assets/drawings/pans/1607/ПЭ 99.01.СБ Корпус.webp',),
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 33.01.01', kettleDrawingName: 'Корпус',currentKettleDrawing: 'assets/drawings/pans/1607/ПЭ 33.01.01 Корпус.webp',),
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 19.01.02.А', kettleDrawingName: 'Ручка 16',currentKettleDrawing: 'assets/drawings/fittings/ПЭ 19.01.02.А Ручка 16.webp',),
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 99.02.СБ', kettleDrawingName: 'Крышка с ручкой в сборе',currentKettleDrawing: 'assets/drawings/lids/01607/ПЭ 99.02.СБ Крышка.webp',),
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 99.02-01.СБ', kettleDrawingName: 'Крышка с державкой в сборе',currentKettleDrawing: 'assets/drawings/lids/01607/ПЭ 99.02-01.СБ Крышка.webp',),
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 99.02.01', kettleDrawingName: 'Крышка',currentKettleDrawing: 'assets/drawings/lids/01607/ПЭ 99.02.01 Крышка.webp',),
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 07.02', kettleDrawingName: 'Ручка крышки',currentKettleDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 72.02.02', kettleDrawingName: 'Державка',currentKettleDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
    ];

    final kettleDrawings2717 =[
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 99.01.СБ', kettleDrawingName: 'Корпус в сборе',currentKettleDrawing: 'assets/drawings/pans/1607/ПЭ 99.01.СБ Корпус.webp',),
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 33.01.01', kettleDrawingName: 'Корпус',currentKettleDrawing: 'assets/drawings/pans/1607/ПЭ 33.01.01 Корпус.webp',),
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 19.01.02.А', kettleDrawingName: 'Ручка 16',currentKettleDrawing: 'assets/drawings/fittings/ПЭ 19.01.02.А Ручка 16.webp',),
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 99.02.СБ', kettleDrawingName: 'Крышка с ручкой в сборе',currentKettleDrawing: 'assets/drawings/lids/01607/ПЭ 99.02.СБ Крышка.webp',),
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 99.02-01.СБ', kettleDrawingName: 'Крышка с державкой в сборе',currentKettleDrawing: 'assets/drawings/lids/01607/ПЭ 99.02-01.СБ Крышка.webp',),
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 99.02.01', kettleDrawingName: 'Крышка',currentKettleDrawing: 'assets/drawings/lids/01607/ПЭ 99.02.01 Крышка.webp',),
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 07.02', kettleDrawingName: 'Ручка крышки',currentKettleDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
      // KettleDrawings (kettleDrawingNumber: 'ПЭ 72.02.02', kettleDrawingName: 'Державка',currentKettleDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
    ];

    List kettleDrawings = [];

    var currentArt=argsFromKettleSelectionScreen.kettleArt;

    if (currentArt == '2707'){kettleDrawings=kettleDrawings2707;}
    else if (currentArt == '2713'){kettleDrawings=kettleDrawings2713;}
    else if (currentArt == '2714'){kettleDrawings=kettleDrawings2714;}
    else if (currentArt == '2716'){kettleDrawings=kettleDrawings2716;}
    else if (currentArt == '2717'){kettleDrawings=kettleDrawings2717;}

    return Scaffold(
      appBar: panDrawingSelectionScreenAppBar(context, pageName),
      drawer: navDrawer(context),
      body: Container(
        decoration: backgroundOfOthersScreen,
        child: Column(
          children: [
            const SizedBox(height:20,),
            Text(argsFromKettleSelectionScreen.kettleName),// Вывод наименования изделия
            const SizedBox(height:10,),
            Text('Арт. ${argsFromKettleSelectionScreen.kettleArt}'),
            const SizedBox(height:10,),
            Expanded(
              child: SizedBox(height: 500,
                child: ListView.builder(
                    itemCount: kettleDrawings.length,
                    itemExtent: 150,
                    itemBuilder: (BuildContext context, int index){
                      final kettleDrawing = kettleDrawings[index];
                      final largeCurrentDrawing = kettleDrawing.currentKettleDrawing;
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
                                      child: Image(image: AssetImage(kettleDrawing.currentKettleDrawing)),
                                    )),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: double.infinity,
                                        child: Text('Чертеж № ${kettleDrawing.kettleDrawingNumber}',
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 10,),
                                      const Padding(
                                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                                        child: Divider(
                                          color: Color(0x6dba0f1f),
                                          thickness: 2,
                                        ),
                                      ),
                                      const SizedBox(height: 10,),
                                      const Text('Наименование чертежа:'),
                                      Text(kettleDrawing.kettleDrawingName,
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
                                    KettleDrawingViewScreen.routeName,
                                    arguments: PassedFromKettleDrawingListArguments(
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
