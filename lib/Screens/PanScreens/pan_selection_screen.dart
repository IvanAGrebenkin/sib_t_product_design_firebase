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
  bool _isPanShapeDisable=true;// Переменная активности списка формы изделия
  bool _isPanSizeDisable=true;// Переменная активности списка формы изделия
  bool _isButtonVisible = false;// Переменная видимости кнопки
  List <String> panShapeList = <String>['...'];// Переменная для определения необходимого списка формы корпуса
  List <String> panSizeList = <String>['...'];// Переменная для определения необходимого списка вместимости изделия
  String panTypeValue = '...';// Переменная для хранения выбранного значения в списке группы изделий
  String panShapeValue = '...';// Переменная для хранения выбранного значения в списке формы корпуса
  String panSizeValue = '...';// Переменная для хранения выбранного значения в списке вместимости изделия

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: nextPageAppBar(context, pageName),
        drawer: navDrawer(context),
        body: Container(
          decoration: backgroundOfOthersScreen,// Задание фонового изображения
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: MediaQuery.of(context).size.width,
                minHeight: MediaQuery.of(context).size.height,
              ),// Ограничения в соответствии с разрешением экрана устройства
              child: IntrinsicHeight(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Expanded(child: SizedBox(height: 50,)),// Отступ по вертикали
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
                        if (newValue == '...') {
                          panShapeValue = '...';
                          panSizeValue = '...';
                          _isPanShapeDisable = true;
                          _isPanSizeDisable= true;
                          _isButtonVisible=false;
                        }
                        else if (newValue == 'Кастрюля с ободком'){
                          panShapeList=typesOfPanWithRimShapesList;
                          panShapeValue = '...';
                          panSizeValue = '...';
                          _isPanShapeDisable = false;
                          _isPanSizeDisable= true;
                          _isButtonVisible=false;}
                        else if (newValue == 'Кастрюля без ободка'){
                          panShapeList=typesOfPanWithoutRimShapesList;
                          panShapeValue = '...';
                          panSizeValue = '...';
                          _isPanShapeDisable = false;
                          _isPanSizeDisable= true;
                          _isButtonVisible=false;}
                      });},
                    ),// Список выбора типа кастрюли
                    const SizedBox(height: 50,),
                    const Text('Выберите форму корпуса:'),
                    DropdownButton(
                      value: panShapeValue,
                      items: panShapeList.map<DropdownMenuItem<String>>((String value) {return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );}).toList(),
                      onChanged: _isPanShapeDisable? null : (String? newValue1){
                        setState(() {
                          panShapeValue = newValue1!;
                          if (panShapeValue == '...') {
                            panSizeValue = '...';
                            _isPanSizeDisable=true;
                            _isButtonVisible = false;
                          }
                          else if (panTypeValue == 'Кастрюля с ободком' && panShapeValue == 'Цилиндрическая'){
                            panSizeList=panCylindricalWithRimSizeList;
                            panSizeValue = '...';
                            _isPanSizeDisable = false;
                            _isButtonVisible=false;}
                          else if (panTypeValue == 'Кастрюля с ободком' && panShapeValue == 'Сферическая'){
                            panSizeList=panSphericalWithRimSizeList;
                            panSizeValue = '...';
                            _isPanSizeDisable = false;
                            _isButtonVisible=false;}
                          else if (panTypeValue == 'Кастрюля без ободка' && panShapeValue == 'Цилиндрическая'){
                            panSizeList=panCylindricalWithoutRimSizeList;
                            panSizeValue = '...';
                            _isPanSizeDisable = false;
                            _isButtonVisible=false;}
                          else if (panTypeValue == 'Кастрюля без ободка' && panShapeValue == 'Сферическая'){
                            panSizeList=panSphericalWithoutRimSizeList;
                            panSizeValue = '...';
                            _isPanSizeDisable = false;
                            _isButtonVisible=false;}
                          else if (panTypeValue == 'Кастрюля без ободка' && panShapeValue == 'Грушевидная'){
                            panSizeList=panPearShapedWithoutRimSizeList;
                            panSizeValue = '...';
                            _isPanSizeDisable = false;
                            _isButtonVisible=false;}
                          else if (panTypeValue == 'Кастрюля без ободка' && panShapeValue == 'Позница'){
                            panSizeList=poznicaSizeList;
                            panSizeValue = '...';
                            _isPanSizeDisable = false;
                            _isButtonVisible=false;}
                        });
                      },
                    ),// Список выбора формы корпуса
                    const SizedBox(height: 50,),
                    const Text('Выберите вместимость:'),
                    DropdownButton(
                      value: panSizeValue,
                      items: panSizeList.map<DropdownMenuItem<String>>((String value) {return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );}).toList(),
                      onChanged: _isPanSizeDisable? null : (String? newValue2){
                        setState(() {
                          panSizeValue = newValue2!;
                          if (panSizeValue == '...') {_isButtonVisible = false;}
                          else {_isButtonVisible=true;}
                        });
                      },
                    ),// Список выбора вместимости изделия
                    const SizedBox(height: 50,),
                    Text('Выбран тип кастрюли: "$panTypeValue",',
                      textAlign: TextAlign.start,
                    ),// Вывод выбранного типа кастрюли
                    Text('Выбрана форма: "$panShapeValue"',
                      textAlign: TextAlign.center,),// Вывод выбранной формы изделия
                    Text('Выбрана вместимость: "$panSizeValue"',
                      textAlign: TextAlign.center,),// Вывод выбранной вместимости изделия
                    const SizedBox(height: 50,),
                    Visibility(
                      visible: _isButtonVisible,
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
                          child: const Text('Выбрать чертеж',
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
                    // const Expanded(child: SizedBox()),
                    const Expanded(child: SizedBox(height: 50,)),// Отступ по вертикали
                  ],
                ),
              ),
            ),// Виджет для задания габаритов
          ),// Скроллинг страницы
        ),
      ),
    );
  }
}
