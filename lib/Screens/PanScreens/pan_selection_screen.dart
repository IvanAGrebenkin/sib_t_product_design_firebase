import 'package:flutter/material.dart';
import '../../Utils/decoration.dart';
import '../../Utils/widgets.dart';

class PanSelection extends StatefulWidget {
  const PanSelection({Key? key}) : super(key: key);
  @override
  State<PanSelection> createState() => _PanSelectionState();
}

class _PanSelectionState extends State<PanSelection> {
  get pageName => 'Кастрюли';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: nextPageAppBar(context, pageName),
        drawer: navDrawer(context),
        body: Container(
          decoration: backgroundOfOthersScreen,// Задание фонового изображения
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 50,),
                  Text('Страница выбора кастрюль'),
                  SizedBox(height: 800,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
