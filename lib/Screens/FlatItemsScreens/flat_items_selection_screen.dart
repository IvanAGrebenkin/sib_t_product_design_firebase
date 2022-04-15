import 'package:flutter/material.dart';
import '../../Utils/decoration.dart';
import '../../Utils/widgets.dart';
import 'flat_item_drawing_view_screen.dart';

class FlatItemsSelection extends StatefulWidget {
  const FlatItemsSelection({Key? key}) : super(key: key);
  @override
  State<FlatItemsSelection> createState() => _FlatItemsSelectionState();
}

class FlatItemDrawings {
  final String flatItemDrawingNumber;
  final String flatItemDrawingName;
  final String flatItemArt;
  final String flatItemCurrentDrawing;
  FlatItemDrawings({
    required this.flatItemDrawingNumber,
    required this.flatItemDrawingName,
    required this.flatItemArt,
    required this.flatItemCurrentDrawing,
  });
}


class _FlatItemsSelectionState extends State<FlatItemsSelection> {
  get pageName => 'Плоские изделия';
  @override
  Widget build(BuildContext context) {

    final panDrawings =[
      FlatItemDrawings (flatItemDrawingNumber: 'ПЭ 04', flatItemDrawingName: 'Миска 0,4л.',flatItemArt: '0303',flatItemCurrentDrawing: 'assets/drawings/flat_items/0303/ПЭ 04 Миска вм. 0,4 л.webp',),
      FlatItemDrawings (flatItemDrawingNumber: 'ПЭ 03', flatItemDrawingName: 'Миска 0,9л.',flatItemArt: '0306',flatItemCurrentDrawing: 'assets/drawings/flat_items/0306/ПЭ 03 Миска вм. 0,9 л.webp',),
      FlatItemDrawings (flatItemDrawingNumber: 'ПЭ 02', flatItemDrawingName: 'Миска 2,0л.',flatItemArt: '0310',flatItemCurrentDrawing: 'assets/drawings/flat_items/0310/ПЭ 02 Миска вм. 2,0 л.webp',),
      FlatItemDrawings (flatItemDrawingNumber: 'ПЭ 01', flatItemDrawingName: 'Миска 4,0л.',flatItemArt: '0313',flatItemCurrentDrawing: 'assets/drawings/flat_items/0313/ПЭ 01 Миска вм. 4,0 л.webp',),
    ];

    return Scaffold(
      appBar: panDrawingSelectionScreenAppBar(context, pageName),
      drawer: navDrawer(context),
      body: Container(
        decoration: backgroundOfOthersScreen,
        child: Column(
          children: [
            const SizedBox(height:20,),
            // Text(argsFromPanSelectionScreen.panName),// Вывод наименования изделия
            // const SizedBox(height:10,),
            // Text('Арт. ${argsFromPanSelectionScreen.art}'),
            // const SizedBox(height:20,),
            // const SizedBox(height:20,),
            Expanded(
              child: SizedBox(height: 500,
                child: ListView.builder(
                    itemCount: panDrawings.length,
                    itemExtent: 150,
                    itemBuilder: (BuildContext context, int index){
                      final flatItemDrawing = panDrawings[index];
                      final largeCurrentDrawing = flatItemDrawing.flatItemCurrentDrawing;
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
                                      child: Image(image: AssetImage(flatItemDrawing.flatItemCurrentDrawing)),
                                    )),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: double.infinity,
                                        child: Text('Чертеж № ${flatItemDrawing.flatItemDrawingNumber}',
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

                                      Text(flatItemDrawing.flatItemDrawingName,
                                        textAlign: TextAlign.start,
                                        style: const TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                      const SizedBox(height: 10,),
                                      Text('Арт. ${flatItemDrawing.flatItemArt}',
                                        textAlign: TextAlign.start,
                                        style: const TextStyle(
                                          fontSize: 16,
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
                                    FlatItemsDrawingViewScreen.routeName,
                                    arguments: PassedFromFlatItemsSelectionScreenArguments(
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
