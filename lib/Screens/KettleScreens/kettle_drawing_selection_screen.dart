import 'package:flutter/material.dart';

import '../../Utils/widgets.dart';

class KettleDrawingSelectionScreen extends StatefulWidget {
  const KettleDrawingSelectionScreen({Key? key}) : super(key: key);

  @override
  State<KettleDrawingSelectionScreen> createState() => _KettleDrawingSelectionScreenState();
}

class _KettleDrawingSelectionScreenState extends State<KettleDrawingSelectionScreen> {
  get pageName => 'Выберите чертеж';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: panDrawingSelectionScreenAppBar(context, pageName),
      drawer: navDrawer(context),
      body: ListView(
        children: [
          const SizedBox(height:20,),
          // Text(argsFromPanSelectionScreen.panName),// Вывод наименования изделия
          const SizedBox(height:10,),
          // Text('Арт. ${argsFromPanSelectionScreen.art}'),
          const SizedBox(height:10,),
          Expanded(
            child: SizedBox(height: 500,
              child: ListView.builder(
                  // itemCount: panDrawings.length,
                  itemExtent: 150,
                  itemBuilder: (BuildContext context, int index){
                    // final panDrawing = panDrawings[index];
                    // final largeCurrentDrawing = panDrawing.currentDrawing;
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
                                // Navigator.pushNamed(context, '/pan_drawing_view_screen');
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
