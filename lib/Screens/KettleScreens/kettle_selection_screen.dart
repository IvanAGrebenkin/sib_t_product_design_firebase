import 'package:flutter/material.dart';
import '../../Utils/decoration.dart';
import '../../Utils/widgets.dart';
import '../PanScreens/pan_lists.dart';
import 'kettle_drawing_selection_screen.dart';

class KettleSelection extends StatefulWidget {
  const KettleSelection({Key? key}) : super(key: key);
  @override
  State<KettleSelection> createState() => _KettleSelectionState();
}

class _KettleSelectionState extends State<KettleSelection> {
  get pageName => 'Чайники';

  String kettleTypeValue = '...';// Переменная для хранения выбранного значения в списке группы изделий
  String kettleShapeValue = '...';// Переменная для хранения выбранного значения в списке формы корпуса
  String kettleSizeValue = '...';// Переменная для хранения выбранного значения в списке вместимости изделия
  String kettleArt = '';// Переменная для хранения артикула выбранного изделия
  String kettleName = '';// Переменная для хранения полного наименования выбранного изделия



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: nextPageAppBar(context, pageName),
        drawer: navDrawer(context),
        body: Container(
          decoration: backgroundOfOthersScreen,// Задание фонового изображения
          child: ListView(
            children: [
              SizedBox(height: intermediateHeight(),),// Отступ по вертикали
              Center(
                child: SizedBox(
                  height: heightOfButton(),// Высота кнопки
                  width: widthOfButton(),// Ширина кнопки
                  child: ElevatedButton(
                    style: kettlesButtonDecoration,//Оформление границ и фона кнопки
                    // style: kettlesButtonDecoration,//Оформление границ и фона кнопки
                    child: Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: topPadding(),// Отступ над изображением внутри кнопки
                            child: Image.asset ('assets/images/kettle_group.png',),// Файл изображения
                          ),
                        ),// Изображение изделия
                        const Text('Чайник 1,0л (заварник)',
                          textAlign: TextAlign.center,
                          style: kettleSelectionButtonTextStyle,
                        ),// Назавание изделия
                        Padding(
                          padding: bottomPadding(),// Отступ снизу под артикулом внутри кнопки
                          child: const Text('арт. 2707',
                            textAlign: TextAlign.center,
                            style: kettleSelectionButtonTextStyle,
                          ),// Артикул изделия
                        ),// Артикул изделия
                      ],
                    ),
                    onPressed: (){
                      kettleArt= '2707'; kettleName=art2707;
                      Navigator.pushNamed(context, KettleDrawingSelectionScreen.routeName, arguments: PassedFromKettleSelectionScreenArguments(
                        kettleArt,
                        kettleName,
                      ),
                      );
                    },
                  ),
                ),// Габариты кнопки
              ),// Кнопка выбора 2707
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
                            padding: topPadding(),// Отступ над изображением внутри кнопки
                            child: Image.asset ('assets/images/kettle_group.png',),// Файл изображения
                          ),
                        ),// Изображение изделия
                        const Text('Чайник 3,5л\nс закатным дном',
                          textAlign: TextAlign.center,
                          style: kettleSelectionButtonTextStyle,
                        ),// Назавание изделия
                        Padding(
                          padding: bottomPadding(),// Отступ снизу под артикулом внутри кнопки
                          child: const Text('арт. 2713',
                            textAlign: TextAlign.center,
                            style: kettleSelectionButtonTextStyle,
                          ),// Артикул изделия
                        ),// Артикул изделия
                      ],
                    ),
                    onPressed: (){
                      kettleArt= '2713'; kettleName=art2713;
                      Navigator.pushNamed(context, KettleDrawingSelectionScreen.routeName, arguments: PassedFromKettleSelectionScreenArguments(
                        kettleArt,
                        kettleName,
                      ),
                      );
                    },
                  ),
                ),// Габариты кнопки
              ),// Кнопка выбора 2713
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
                            padding: topPadding(),// Отступ над изображением внутри кнопки
                            child: Image.asset ('assets/images/kettle_group.png',),// Файл изображения
                          ),
                        ),// Изображение изделия
                        const Text('Чайник ц/т 2,3л',
                          textAlign: TextAlign.center,
                          style: kettleSelectionButtonTextStyle,
                        ),// Назавание изделия
                        Padding(
                          padding: bottomPadding(),// Отступ снизу под артикулом внутри кнопки
                          child: const Text('арт. 2714',
                            textAlign: TextAlign.center,
                            style: kettleSelectionButtonTextStyle,
                          ),// Артикул изделия
                        ),// Артикул изделия
                      ],
                    ),
                    onPressed: (){
                      kettleArt= '2714'; kettleName=art2714;
                      Navigator.pushNamed(context, KettleDrawingSelectionScreen.routeName, arguments: PassedFromKettleSelectionScreenArguments(
                        kettleArt,
                        kettleName,
                      ),
                      );
                    },
                  ),
                ),// Габариты кнопки
              ),// Кнопка выбора 2714
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
                            padding: topPadding(),// Отступ над изображением внутри кнопки
                            child: Image.asset ('assets/images/kettle_group.png',),// Файл изображения
                          ),
                        ),// Изображение изделия
                        const Text('Чайник ц/т 3,5л',
                          textAlign: TextAlign.center,
                          style: kettleSelectionButtonTextStyle,
                        ),// Назавание изделия
                        Padding(
                          padding: bottomPadding(),// Отступ снизу под артикулом внутри кнопки
                          child: const Text('арт. 2716',
                            textAlign: TextAlign.center,
                            style: kettleSelectionButtonTextStyle,
                          ),// Артикул изделия
                        ),// Артикул изделия
                      ],
                    ),
                    onPressed: (){kettleArt= '2716'; kettleName=art2716;
                    Navigator.pushNamed(context, KettleDrawingSelectionScreen.routeName, arguments: PassedFromKettleSelectionScreenArguments(
                      kettleArt,
                      kettleName,
                    ),
                    );},
                  ),
                ),// Габариты кнопки
              ),// Кнопка выбора 2716
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
                            padding: topPadding(),// Отступ над изображением внутри кнопки
                            child: Image.asset ('assets/images/kettle_group.png',),// Файл изображения
                          ),
                        ),// Изображение изделия
                        const Text('Чайник со свистком 3,0л',
                          textAlign: TextAlign.center,
                          style: kettleSelectionButtonTextStyle,
                        ),// Назавание изделия
                        Padding(
                          padding: bottomPadding(),// Отступ снизу под артикулом внутри кнопки
                          child: const Text('арт. 2717',
                            textAlign: TextAlign.center,
                            style: kettleSelectionButtonTextStyle,
                          ),// Артикул изделия
                        ),// Артикул изделия
                      ],
                    ),
                    onPressed: (){kettleArt= '2717'; kettleName=art2717;
                    Navigator.pushNamed(context, KettleDrawingSelectionScreen.routeName, arguments: PassedFromKettleSelectionScreenArguments(
                      kettleArt,
                      kettleName,
                    ),
                    );},
                  ),
                ),// Габариты кнопки
              ),// Кнопка выбора 2717
              SizedBox(height: intermediateHeight(),),// Отступ по вертикали
              ],
            ),// Список кнопок выбора изделия
          ),// Задача заднего фона
        ),
      );
  }

  double heightOfButton() => 120;

  double widthOfButton() => 200;

  EdgeInsets topPadding() => const EdgeInsets.only(top: 5);

  EdgeInsets bottomPadding() => const EdgeInsets.only(bottom: 10);

  double intermediateHeight() => 30;
}
