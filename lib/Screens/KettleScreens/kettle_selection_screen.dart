import 'package:flutter/material.dart';
import '../../Utils/decoration.dart';
import '../../Utils/widgets.dart';

class KettleSelection extends StatefulWidget {
  const KettleSelection({Key? key}) : super(key: key);
  @override
  State<KettleSelection> createState() => _KettleSelectionState();
}

class _KettleSelectionState extends State<KettleSelection> {
  get pageName => 'Чайники';
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
                  Text('Страница выбора чайников'),
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
