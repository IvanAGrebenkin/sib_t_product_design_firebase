import 'package:flutter/material.dart';
import '../Utils/decoration.dart';
import '../Utils/widgets.dart';

class HouseholdItemsSelection extends StatefulWidget {
  const HouseholdItemsSelection({Key? key}) : super(key: key);
  @override
  State<HouseholdItemsSelection> createState() => _HouseholdItemsSelectionState();
}

class _HouseholdItemsSelectionState extends State<HouseholdItemsSelection> {
  get pageName => 'Хозяйственные\n изделия';
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
                  Text('Страница выбора хозяйственных изделий'),
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
