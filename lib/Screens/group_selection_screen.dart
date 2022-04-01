import 'package:flutter/material.dart';
import '../Utils/decoration.dart';
import '../Utils/widgets.dart';

class GroupSelectionScreen extends StatefulWidget {
  const GroupSelectionScreen({Key? key}) : super(key: key);
  @override
  State<GroupSelectionScreen> createState() => _GroupSelectionScreenState();
}

class _GroupSelectionScreenState extends State<GroupSelectionScreen> {
  get pageName => 'Выбор группы изделий';// Имя заголовка в AppBar
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: homePageAppBar(context, pageName),
        drawer: navDrawer(context),
        body: Container(
          decoration: backgroundOfOthersScreen,// Задание фонового изображения
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 40,),// Отступ по вертикали
                  SizedBox(height: 126,width: 178,
                    child: ElevatedButton(
                      style: groupButtonDecoration,
                      onPressed: (){Navigator.pushNamed(context, '/pan_selection_screen');},
                      child: Column(
                        children: [
                          Expanded(child: Image.asset ('assets/images/pan_group.png',),),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Кастрюли',
                              textAlign: TextAlign.center,
                              style: groupSelectionButtonTextStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),// Кнопка выбора группы кастрюль
                  const SizedBox(height: 20,),// Отступ по вертикали
                  SizedBox(height: 126,width: 178,
                    child: ElevatedButton(
                      style: groupButtonDecoration,
                      onPressed: (){},
                      child: Column(
                        children: [
                          Expanded(child: Image.asset ('assets/images/kettle_group.png',),),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Чайники',
                              textAlign: TextAlign.center,
                              style: groupSelectionButtonTextStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),// Кнопка выбора группы чайников
                  const SizedBox(height: 20,),// Отступ по вертикали
                  SizedBox(height: 126,width: 178,
                    child: ElevatedButton(
                      style: groupButtonDecoration,
                      onPressed: (){},
                      child: Column(
                        children: [
                          Expanded(child: Image.asset ('assets/images/household_items_group.png',),),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Хозяйственные изделия',
                              textAlign: TextAlign.center,
                              style: groupSelectionButtonTextStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),// Кнопка выбора группы Хозяйственные изделия
                  const SizedBox(height: 20,),// Отступ по вертикали
                  SizedBox(height: 126,width: 178,
                    child: ElevatedButton(
                      style: groupButtonDecoration,
                      onPressed: (){},
                      child: Column(
                        children: [
                          Expanded(child: Image.asset ('assets/images/flat_items_group.png',),),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Плоские изделия',
                              textAlign: TextAlign.center,
                              style: groupSelectionButtonTextStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),// Кнопка выбора группы Плоские изделия
                  const SizedBox(height: 80,),// Отступ по вертикали
                ],
              ),
            ),
          ),// Скроллинг кнопок на странице
        ),
      ),
    );
  }
}


