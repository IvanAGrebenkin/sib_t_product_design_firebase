import 'package:flutter/material.dart';
import 'package:sib_t_product_design/Screens/PanScreens/pan_drawing_view_screen.dart';

class PanDrawings {
  final String panDrawingNumber;
  final String panDrawingName;
  final String currentDrawing;
  PanDrawings({
    required this.panDrawingNumber,
    required this.panDrawingName,
    required this.currentDrawing,
  });
}

class PanDrawingListWidget extends StatefulWidget {
  const PanDrawingListWidget({Key? key}) : super(key: key);

  @override
  State<PanDrawingListWidget> createState() => _PanDrawingListWidgetState();
}

class _PanDrawingListWidgetState extends State<PanDrawingListWidget> {
final panDrawings1607 =[
  PanDrawings (panDrawingNumber: 'ПЭ 07.02', panDrawingName: 'Ручка',currentDrawing: 'assets/drawings/fittings/ПЭ 07.02 Ручка.webp',),
  PanDrawings (panDrawingNumber: 'ПЭ 19.01.02.А', panDrawingName: 'Ручка 16',currentDrawing: 'assets/drawings/fittings/ПЭ 19.01.02.А Ручка 16.webp',),
  PanDrawings (panDrawingNumber: 'ПЭ 33.01.01', panDrawingName: 'Корпус',currentDrawing: 'assets/drawings/pans/1607/ПЭ 33.01.01 Корпус.webp',),
  PanDrawings (panDrawingNumber: 'ПЭ 72.02.02', panDrawingName: 'Державка',currentDrawing: 'assets/drawings/fittings/ПЭ 72.02.02 Державка.webp',),
  PanDrawings (panDrawingNumber: 'ПЭ 99.01.СБ', panDrawingName: 'Корпус в сборе',currentDrawing: 'assets/drawings/pans/1607/ПЭ 99.01.СБ Корпус.webp',),
  PanDrawings (panDrawingNumber: 'ПЭ 99.02.01', panDrawingName: 'Крышка',currentDrawing: 'assets/drawings/pans/1607/ПЭ 99.02.01 Крышка.webp',),
  PanDrawings (panDrawingNumber: 'ПЭ 99.02.СБ', panDrawingName: 'Крышка с ручкой в сборе',currentDrawing: 'assets/drawings/pans/1607/ПЭ 99.02.СБ Крышка.webp',),
  PanDrawings (panDrawingNumber: 'ПЭ 99.02-01.СБ', panDrawingName: 'Крышка с державкой в сборе',currentDrawing: 'assets/drawings/pans/1607/ПЭ 99.02-01.СБ Крышка.webp',),
];

  final panDrawings1610 =[
    PanDrawings (panDrawingNumber: 'ПЭ 19.01.02', panDrawingName: 'Ручка 18',currentDrawing: 'assets/drawings/fittings/ПЭ 19.01.02 Ручка 18.webp',),
    PanDrawings (panDrawingNumber: 'ПЭ 19.02.01', panDrawingName: 'Крышка',currentDrawing: 'assets/drawings/pans/1610/ПЭ 19.02.01 Крышка.webp',),
    PanDrawings (panDrawingNumber: 'ПЭ 19.02.01', panDrawingName: 'Крышка (из кружка)',currentDrawing: 'assets/drawings/pans/1610/ПЭ 19.02.01 Крышка (из кружка).webp',),
    PanDrawings (panDrawingNumber: 'ПЭ 19.02.СБ', panDrawingName: 'Крышка с ручкой в сборе',currentDrawing: 'assets/drawings/pans/1610/ПЭ 19.02.СБ Крышка.webp',),
    PanDrawings (panDrawingNumber: 'ПЭ 19.02-01.СБ', panDrawingName: 'Крышка с державкой в сборе',currentDrawing: 'assets/drawings/pans/1610/ПЭ 19.02-01.СБ Крышка.webp',),
    PanDrawings (panDrawingNumber: 'ПЭ 21.01.01', panDrawingName: 'Корпус',currentDrawing: 'assets/drawings/pans/1610/ПЭ 21.01.01 Корпус.webp',),
    PanDrawings (panDrawingNumber: 'ПЭ 21.01.А.СБ', panDrawingName: 'Корпус в сборе',currentDrawing: 'assets/drawings/pans/1610/ПЭ 21.01.А.СБ Корпус.webp',),
  ];

   List panDrawings = [];

  late String currentArt;// Переменная текущего списка чертежей

// Маршрут куда передаются аргументы
  @override
  Widget build(BuildContext context) {


    if (currentArt == '1610'){panDrawings = panDrawings1610;}
    else if(currentArt == '1607'){panDrawings = panDrawings1607;}

    return ListView.builder(
      itemCount: panDrawings.length,
      itemExtent: 150,
      itemBuilder: (BuildContext context, int index){

        final panDrawing = panDrawings[index];
        final largeCurrentDrawing = panDrawing.currentDrawing;

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
                      child: Image(image: AssetImage(panDrawing.currentDrawing)),
                    )),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Text('Чертеж № ${panDrawing.panDrawingNumber}',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                      // const SizedBox(height: 10,),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Divider(
                          color: Color(0x6dba0f1f),
                          thickness: 2,
                        ),
                      ),
                      // const SizedBox(height: 10,),
                      // const Text('Наименование чертежа:'),
                      Text(panDrawing.panDrawingName,
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
                  Navigator.pushNamed(
                    context,
                    PanDrawingViewScreen.routeName,
                    arguments: PassedFromPanDrawingListArguments(
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
    );
  }
}

