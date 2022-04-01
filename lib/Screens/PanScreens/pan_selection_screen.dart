import 'package:flutter/material.dart';
import 'package:sib_t_product_design/Screens/PanScreens/pan_drawing_selection_screen.dart';
import 'package:sib_t_product_design/Screens/PanScreens/pan_lists.dart';
import '../../Utils/decoration.dart';
import '../../Utils/widgets.dart';

class PanSelection extends StatefulWidget {
  const PanSelection({Key? key}) : super(key: key);
  @override
  State<PanSelection> createState() => _PanSelectionState();
}

class _PanSelectionState extends State<PanSelection> {
  get pageName => 'Кастрюли';

  // Переменне
  bool _isDisable=true;// Переменная активности второго списка
  bool isVisible = false;// Переменная видимости кнопки
  List <String> namesList = <String>['...'];// Переменная для определения необходимого списка с наименованиями изделий
  String panTypeValue = '...';// Переменная для хранения выбранного значения в списке группы изделий
  String panShapeValue = '...';// Переменная для хранения выбранного значения в списке наименования изделия

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
                  const SizedBox(height: 50,),
                  const Text('Выберите тип кастрюли:'),
                  DropdownButton(
                    value: panTypeValue,
                    items: listOfPanTypes.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );}).toList(),
                    onChanged: (String? newValue){ setState(() {
                      panTypeValue = newValue!;
                      if (newValue == '...') {panShapeValue = '...'; _isDisable = true; isVisible=false;}
                      else if (newValue == 'Кастрюля с ободком'){namesList=typesOfPanWithRimShapesList;panShapeValue = '...'; _isDisable = false;isVisible=false;}
                      else if (newValue == 'Кастрюля без ободка'){namesList=typesOfPanWithoutRimShapesList;panShapeValue = '...'; _isDisable = false;isVisible=false;}
                    });},
                  ),
                  const SizedBox(height: 50,),
                  const Text('Выберите форму корпуса:'),
                  DropdownButton(
                    value: panShapeValue,
                    items: namesList.map<DropdownMenuItem<String>>((String value) {return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );}).toList(),
                    onChanged: _isDisable? null : (String? newValue1){
                      setState(() {
                        panShapeValue = newValue1!;
                        if (panShapeValue == '...') {isVisible = false;}
                        else {isVisible = true;}
                      });
                    },
                  ),
                  const SizedBox(height: 50,),
                  Text('Группа изделий: "$panTypeValue",',
                    textAlign: TextAlign.start,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: Text('Наименование изделия: "$panShapeValue"',
                      textAlign: TextAlign.center,),
                  ),
                  const SizedBox(height: 50,),
                  Visibility(
                    visible: isVisible,
                    child: SizedBox(width:250, height:55,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            PassArgumentsScreen.routeName,
                            arguments: PassedArguments(
                              panTypeValue,
                              panShapeValue,
                            ),
                          );
                        },
                        child: const Text('Появляющаяся кнопка',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            inherit: false,
                            fontSize:16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          // primary: Colors.lightGreen,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                        ),
                      ),
                    ),
                  ),// Появляющаяся кнопка
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
