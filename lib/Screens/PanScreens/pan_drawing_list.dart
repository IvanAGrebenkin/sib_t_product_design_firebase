import 'package:flutter/material.dart';
import '../../Utils/decoration.dart';

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

class PanDrawingListWidget extends StatelessWidget {
  PanDrawingListWidget({Key? key}) : super(key: key);
final _panDrawings =[
  PanDrawings (panDrawingNumber: 'ПЭ 07.02', panDrawingName: 'Ручка',currentDrawing: 'assets/drawings/pans/1607/ПЭ 07.02 Ручка.webp',),
  PanDrawings (panDrawingNumber: 'ПЭ 19.01.02.А', panDrawingName: 'Ручка 16',currentDrawing: 'assets/drawings/pans/1607/ПЭ 19.01.02.А Ручка 16.webp',),
  PanDrawings (panDrawingNumber: 'ПЭ 33.01.01', panDrawingName: 'Корпус',currentDrawing: 'assets/drawings/pans/1607/ПЭ 33.01.01 Корпус.webp',),
  PanDrawings (panDrawingNumber: 'ПЭ 72.02.02', panDrawingName: 'Державка',currentDrawing: 'assets/drawings/pans/1607/ПЭ 72.02.02 Державка.webp',),
  PanDrawings (panDrawingNumber: 'ПЭ 99.01.СБ', panDrawingName: 'Крышка в сборе',currentDrawing: 'assets/drawings/pans/1607/ПЭ 99.01.СБ Корпус.webp',),
  PanDrawings (panDrawingNumber: 'ПЭ 99.02.01', panDrawingName: 'Крышка',currentDrawing: 'assets/drawings/pans/1607/ПЭ 99.02.01 Крышка.webp',),
  PanDrawings (panDrawingNumber: 'ПЭ 99.02.СБ', panDrawingName: 'Крышка с ручкой в сборе',currentDrawing: 'assets/drawings/pans/1607/ПЭ 99.02.СБ Крышка.webp',),
  PanDrawings (panDrawingNumber: 'ПЭ 99.02-01.СБ', panDrawingName: 'Крышка с державкой в сборе',currentDrawing: 'assets/drawings/pans/1607/ПЭ 99.02-01.СБ Крышка.webp',),

];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: backgroundOfOthersScreen,
      child: ListView.builder(

          itemCount: _panDrawings.length,
          itemExtent: 150,
          itemBuilder: (BuildContext context, int index){
            final panDrawing = _panDrawings[index];
            return Row(children: [
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Чертеж № ${panDrawing.panDrawingNumber}'),
                    const SizedBox(height: 20,),
                    // const Text('Наименование чертежа:'),
                    Text(panDrawing.panDrawingName),
                  ],
                ),
              ),
            ],);
          }
      ),
    );
  }
}