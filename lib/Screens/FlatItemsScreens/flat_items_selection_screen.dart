import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import '../../Utils/decoration.dart';
import '../../Utils/widgets.dart';
import 'flat_item_drawing_view_screen.dart';

class FlatItemsSelection extends StatefulWidget {
  const FlatItemsSelection({Key? key}) : super(key: key);
  @override
  State<FlatItemsSelection> createState() => _FlatItemsSelectionState();
}

class _FlatItemsSelectionState extends State<FlatItemsSelection> {
  get pageName => 'Плоские изделия';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: panDrawingSelectionScreenAppBar(context, pageName),
      drawer: navDrawer(context),
      body: Container(
        decoration: backgroundOfOthersScreen,
        child: Column(
          children: [
            const SizedBox(height:20,),
            Expanded(
              child: SizedBox(height: 500,
                child: StreamBuilder(
                  stream: FirebaseFirestore.instance.collection('flatItemDrawings').snapshots(),
                  builder: (context, AsyncSnapshot<QuerySnapshot>snapshot) {
                    if (!snapshot.hasData) return const Text('Пустой список');
                    return ListView.builder(
                        itemCount: snapshot.data?.docs.length,
                        itemExtent: 150,
                        itemBuilder: (BuildContext context, int index){
                          final flatItemDrawing = snapshot.data?.docs[index];
                          final largeCurrentDrawing = flatItemDrawing?.get('flatItemCurrentDrawing');
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
                                          child: Image(image: NetworkImage(flatItemDrawing?.get('flatItemCurrentDrawing'))),
                                        )),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: double.infinity,
                                            child: Text(flatItemDrawing?.get('flatItemDrawingName'),
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),// Название изделия
                                          // const SizedBox(height: 10,),
                                          const Padding(
                                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                                            child: Divider(
                                              color: Color(0x6dba0f1f),
                                              thickness: 2,
                                            ),
                                          ),

                                          Text('Арт. ${flatItemDrawing?.get('flatItemArt')}',
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              fontSize: 16,
                                            ),
                                          ),// Артикул изделия
                                          const SizedBox(height: 10,),
                                          Text('Чертеж № ${flatItemDrawing?.get('flatItemDrawingNumber')}',
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              fontSize: 14,
                                            ),
                                          ),// Номер чертежа
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
