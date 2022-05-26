import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../../Utils/decoration.dart';
import '../../Utils/widgets.dart';
// import '../../Utils/pan_and_kettle_list.dart';
import 'kettle_drawing_selection_screen.dart';

class KettleSelection extends StatefulWidget {
  const KettleSelection({Key? key}) : super(key: key);
  @override
  State<KettleSelection> createState() => _KettleSelectionState();
}

class _KettleSelectionState extends State<KettleSelection> {
  get pageName => 'Чайники';

  String kettleArt = '';// Переменная для хранения артикула выбранного изделия
  String kettleName = '';// Переменная для хранения полного наименования выбранного изделия

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: nextPageAppBar(context, pageName),
        drawer: navDrawer(context),
        body: Container(
          decoration: backgroundOfOthersScreen,// Задание фонового изображения
          child: StreamBuilder(
            stream: FirebaseFirestore.instance.collection('kettleList').snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot>snapshot) {
              if (!snapshot.hasData) return const Text('Пустой список');
              return ListView.builder(
                itemCount: snapshot.data?.docs.length,
                itemBuilder: (BuildContext context, int index) {
                  final kettleList = snapshot.data?.docs[index];
                  return Column(
                    children: [
                      SizedBox(height: intermediateHeight(),),// Отступ по вертикали
                      Center(
                        child: SizedBox(
                          height: heightOfButton(),// Высота кнопки
                          width: widthOfButton(),// Ширина кнопки
                          child: ElevatedButton(
                            style: kettlesButtonDecoration,//Оформление границ и фона кнопки
                            child: Column(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 15),// Отступ над изображением внутри кнопки,
                                    child: Image(image: NetworkImage (kettleList?.get('kettlePicture'),),),// Файл изображения
                                  ),
                                ),
                                Text(kettleList?.get('kettleName'),
                                  textAlign: TextAlign.center,
                                  style: kettleSelectionButtonTextStyle,
                                ),
                                Padding(
                                  padding: bottomPadding(),// Отступ снизу под артикулом внутри кнопки
                                  child: Text('арт. ${kettleList?.get('kettleArt')}',
                                    textAlign: TextAlign.center,
                                    style: kettleSelectionButtonTextStyle,
                                  ),
                                )
                              ],
                            ),
                            onPressed: () {
                              kettleArt= kettleList?.get('kettleArt'); kettleName = kettleList?.get('kettleName');
                              Navigator.pushNamed(context, KettleDrawingSelectionScreen.routeName, arguments: PassedFromKettleSelectionScreenArguments(
                                kettleArt,
                                kettleName,
                              ),
                              );
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: intermediateHeight(),),// Отступ по вертикали
                    ],
                  );
                },
                  /*
        //     children: [
        //       SizedBox(height: intermediateHeight(),),// Отступ по вертикали
        //       Center(
        //         child: SizedBox(
        //           height: heightOfButton(),// Высота кнопки
        //           width: widthOfButton(),// Ширина кнопки
        //           child: ElevatedButton(
        //             style: kettlesButtonDecoration,//Оформление границ и фона кнопки
        //             child: Column(
        //               children: [
        //                 Expanded(
        //                   child: Padding(
        //                     padding: const EdgeInsets.symmetric(vertical: 15),// Отступ над изображением внутри кнопки
        //                     child: Image.asset ('assets/images/2707.png',),// Файл изображения
        //                   ),
        //                 ),// Изображение изделия
        //                 const Text('Чайник 1,0л (заварник)',
        //                   textAlign: TextAlign.center,
        //                   style: kettleSelectionButtonTextStyle,
        //                 ),// Назавание изделия
        //                 Padding(
        //                   padding: bottomPadding(),// Отступ снизу под артикулом внутри кнопки
        //                   child: const Text('арт. 2707',
        //                     textAlign: TextAlign.center,
        //                     style: kettleSelectionButtonTextStyle,
        //                   ),// Артикул изделия
        //                 ),// Артикул изделия
        //               ],
        //             ),
                    onPressed: (){
                      kettleArt= '2707'; kettleName=art2707;
                      Navigator.pushNamed(context, KettleDrawingSelectionScreen.routeName, arguments: PassedFromKettleSelectionScreenArguments(
                        kettleArt,
                        kettleName,
                      ),
                      );
                    },
        //           ),
        //         ),// Габариты кнопки
        //       ),// Кнопка выбора 2707
        //       // SizedBox(height: intermediateHeight(),),// Отступ по вертикали
        //       // Center(
        //       //   child: SizedBox(
        //       //     height: heightOfButton(),// Высота кнопки
        //       //     width: widthOfButton(),// Ширина кнопки
        //       //     child: ElevatedButton(
        //       //       style: kettlesButtonDecoration,//Оформление границ и фона кнопки
        //       //       child: Column(
        //       //         children: [
        //       //           Expanded(
        //       //             child: Padding(
        //       //               padding: topPadding(),// Отступ над изображением внутри кнопки
        //       //               child: Image.asset ('assets/images/2713.png',),// Файл изображения
        //       //             ),
        //       //           ),// Изображение изделия
        //       //           const Text('Чайник 3,5л',
        //       //             textAlign: TextAlign.center,
        //       //             style: kettleSelectionButtonTextStyle,
        //       //           ),// Назавание изделия
        //       //           Padding(
        //       //             padding: bottomPadding(),// Отступ снизу под артикулом внутри кнопки
        //       //             child: const Text('арт. 2713',
        //       //               textAlign: TextAlign.center,
        //       //               style: kettleSelectionButtonTextStyle,
        //       //             ),// Артикул изделия
        //       //           ),// Артикул изделия
        //       //         ],
        //       //       ),
        //       //       onPressed: (){
        //       //         kettleArt= '2713'; kettleName=art2713;
        //       //         Navigator.pushNamed(context, KettleDrawingSelectionScreen.routeName, arguments: PassedFromKettleSelectionScreenArguments(
        //       //           kettleArt,
        //       //           kettleName,
        //       //         ),
        //       //         );
        //       //       },
        //       //     ),
        //       //   ),// Габариты кнопки
        //       // ),// Кнопка выбора 2713
        //       // SizedBox(height: intermediateHeight(),),// Отступ по вертикали
        //       // Center(
        //       //   child: SizedBox(
        //       //     height: heightOfButton(),// Высота кнопки
        //       //     width: widthOfButton(),// Ширина кнопки
        //       //     child: ElevatedButton(
        //       //       style: kettlesButtonDecoration,//Оформление границ и фона кнопки
        //       //       child: Column(
        //       //         children: [
        //       //           Expanded(
        //       //             child: Padding(
        //       //               padding: topPadding(),// Отступ над изображением внутри кнопки
        //       //               child: Image.asset ('assets/images/kettle_group.png',),// Файл изображения
        //       //             ),
        //       //           ),// Изображение изделия
        //       //           const Text('Чайник ц/т 2,3л',
        //       //             textAlign: TextAlign.center,
        //       //             style: kettleSelectionButtonTextStyle,
        //       //           ),// Назавание изделия
        //       //           Padding(
        //       //             padding: bottomPadding(),// Отступ снизу под артикулом внутри кнопки
        //       //             child: const Text('арт. 2714',
        //       //               textAlign: TextAlign.center,
        //       //               style: kettleSelectionButtonTextStyle,
        //       //             ),// Артикул изделия
        //       //           ),// Артикул изделия
        //       //         ],
        //       //       ),
        //       //       onPressed: (){
        //       //         kettleArt= '2714'; kettleName=art2714;
        //       //         Navigator.pushNamed(context, KettleDrawingSelectionScreen.routeName, arguments: PassedFromKettleSelectionScreenArguments(
        //       //           kettleArt,
        //       //           kettleName,
        //       //         ),
        //       //         );
        //       //       },
        //       //     ),
        //       //   ),// Габариты кнопки
        //       // ),// Кнопка выбора 2714
        //       // SizedBox(height: intermediateHeight(),),// Отступ по вертикали
        //       // Center(
        //       //   child: SizedBox(
        //       //     height: heightOfButton(),// Высота кнопки
        //       //     width: widthOfButton(),// Ширина кнопки
        //       //     child: ElevatedButton(
        //       //       style: kettlesButtonDecoration,//Оформление границ и фона кнопки
        //       //       child: Column(
        //       //         children: [
        //       //           Expanded(
        //       //             child: Padding(
        //       //               padding: topPadding(),// Отступ над изображением внутри кнопки
        //       //               child: Image.asset ('assets/images/2716.png',),// Файл изображения
        //       //             ),
        //       //           ),// Изображение изделия
        //       //           const Text('Чайник ц/т 3,5л',
        //       //             textAlign: TextAlign.center,
        //       //             style: kettleSelectionButtonTextStyle,
        //       //           ),// Назавание изделия
        //       //           Padding(
        //       //             padding: bottomPadding(),// Отступ снизу под артикулом внутри кнопки
        //       //             child: const Text('арт. 2716',
        //       //               textAlign: TextAlign.center,
        //       //               style: kettleSelectionButtonTextStyle,
        //       //             ),// Артикул изделия
        //       //           ),// Артикул изделия
        //       //         ],
        //       //       ),
        //       //       onPressed: (){kettleArt= '2716'; kettleName=art2716;
        //       //       Navigator.pushNamed(context, KettleDrawingSelectionScreen.routeName, arguments: PassedFromKettleSelectionScreenArguments(
        //       //         kettleArt,
        //       //         kettleName,
        //       //       ),
        //       //       );},
        //       //     ),
        //       //   ),// Габариты кнопки
        //       // ),// Кнопка выбора 2716
        //       // SizedBox(height: intermediateHeight(),),// Отступ по вертикали
        //       // Center(
        //       //   child: SizedBox(
        //       //     height: heightOfButton(),// Высота кнопки
        //       //     width: widthOfButton(),// Ширина кнопки
        //       //     child: ElevatedButton(
        //       //       style: kettlesButtonDecoration,//Оформление границ и фона кнопки
        //       //       child: Column(
        //       //         children: [
        //       //           Expanded(
        //       //             child: Padding(
        //       //               padding: topPadding(),// Отступ над изображением внутри кнопки
        //       //               child: Image.asset ('assets/images/2717.png',),// Файл изображения
        //       //             ),
        //       //           ),// Изображение изделия
        //       //           const Text('Чайник со свистком 3,0л',
        //       //             textAlign: TextAlign.center,
        //       //             style: kettleSelectionButtonTextStyle,
        //       //           ),// Назавание изделия
        //       //           Padding(
        //       //             padding: bottomPadding(),// Отступ снизу под артикулом внутри кнопки
        //       //             child: const Text('арт. 2717',
        //       //               textAlign: TextAlign.center,
        //       //               style: kettleSelectionButtonTextStyle,
        //       //             ),// Артикул изделия
        //       //           ),// Артикул изделия
        //       //         ],
        //       //       ),
        //       //       onPressed: (){kettleArt= '2717'; kettleName=art2717;
        //       //       Navigator.pushNamed(context, KettleDrawingSelectionScreen.routeName, arguments: PassedFromKettleSelectionScreenArguments(
        //       //         kettleArt,
        //       //         kettleName,
        //       //       ),
        //       //       );},
        //       //     ),
        //       //   ),// Габариты кнопки
        //       // ),// Кнопка выбора 2717
        //       // SizedBox(height: intermediateHeight(),),// Отступ по вертикали
        //       ],
                */
                );
            }
          ),// Список кнопок выбора изделия
          ),// Задача заднего фона
        )
      ;
  }

  double heightOfButton() => 120;

  double widthOfButton() => 200;

  EdgeInsets topPadding() => const EdgeInsets.only(top: 5);

  EdgeInsets bottomPadding() => const EdgeInsets.only(bottom: 10);

  double intermediateHeight() => 15;
}
