import 'package:flutter/material.dart';
import '../Utils/decoration.dart';
import '../Utils/widgets.dart';

class FlatItemsSelection extends StatefulWidget {
  const FlatItemsSelection({Key? key}) : super(key: key);
  @override
  State<FlatItemsSelection> createState() => _FlatItemsSelectionState();
}

class _FlatItemsSelectionState extends State<FlatItemsSelection> {
  get pageName => 'Плоские изделия';
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
                  Text('Страница выбора плоских изделий'),
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
