import 'package:flutter/material.dart';
import '../../Utils/decoration.dart';
import '../../Utils/widgets.dart';
import 'package:sib_t_product_design/Screens/HouseholdItemsScreens/household_items_lists.dart';

import 'household_items_drawing_selection_screen.dart';

class HouseholdItemsSelection extends StatefulWidget {
  const HouseholdItemsSelection({Key? key}) : super(key: key);
  @override
  State<HouseholdItemsSelection> createState() => _HouseholdItemsSelectionState();
}

class _HouseholdItemsSelectionState extends State<HouseholdItemsSelection> {
  get pageName => 'Хозяйственные\n изделия';

  // Переменне
  bool _isHouseholdItemsShapeDisable=true;// Переменная активности списка формы изделия
  bool _isHouseholdItemsSizeDisable=true;// Переменная активности списка формы изделия
  bool _isButtonVisible = false;// Переменная видимости кнопки
  List <String> householdItemsShapeList = <String>['...'];// Переменная для определения необходимого списка формы корпуса
  List <String> householdItemsSizeList = <String>['...'];// Переменная для определения необходимого списка вместимости изделия
  String householdItemsTypeValue = '...';// Переменная для хранения выбранного значения в списке группы изделий
  String householdItemsShapeValue = '...';// Переменная для хранения выбранного значения в списке формы корпуса
  String householdItemsSizeValue = '...';// Переменная для хранения выбранного значения в списке вместимости изделия
  String householdItemsArt = '';// Переменная для хранения артикула выбранного изделия
  String householdItemsName = '';// Переменная для хранения полного наименования выбранного изделия


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
                    const SizedBox(height: 50,),// Отступ по вертикали
                    const Text('Выберите тип изделия:'),
                    DropdownButton(
                      value: householdItemsTypeValue,
                      items: listOfHouseholdItemsTypes.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );}).toList(),
                      onChanged: (String? newValue){ setState(() {
                        householdItemsTypeValue = newValue!;
                        if (newValue == '...') {
                          householdItemsShapeValue = '...';
                          householdItemsSizeValue = '...';
                          _isHouseholdItemsShapeDisable = true;
                          _isHouseholdItemsSizeDisable = true;
                          _isButtonVisible = false;
                        }
                        else if (newValue == 'Бак'){
                          householdItemsShapeList=tanksSizeList;
                          workWithFirstDropButton();
                        }
                        else if (newValue == 'Ведро'){
                          householdItemsShapeList=bucketsShapesList;
                          workWithFirstDropButton();
                        }
                        else if (newValue == 'Ковш'){
                          householdItemsShapeList=ladlesShapesList;
                          workWithFirstDropButton();
                        }
                        else if (newValue == 'Кружка'){
                          householdItemsShapeList=mugsSizeList;
                          workWithFirstDropButton();
                        }
                        else if (newValue == 'Дуршлаг'){
                          // householdItemsShapeList=mugsSizeList;
                          workWithFirstDropButton();
                        }
                        else if (newValue == 'Бидон'){
                          // householdItemsShapeList=mugsSizeList;
                          workWithFirstDropButton();
                        }
                        else if (newValue == 'Горшок ночной'){
                          // householdItemsShapeList=mugsSizeList;
                          workWithFirstDropButton();
                        }
                      });},
                    ),// Список выбора типа кастрюли
                    const SizedBox(height: 50,),
                    const Text('Выберите форму корпуса:'),
                    DropdownButton(
                      value: householdItemsShapeValue,
                      items: householdItemsShapeList.map<DropdownMenuItem<String>>((String value) {return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );}).toList(),
                      onChanged: _isHouseholdItemsShapeDisable? null : (String? newValue1){
                        setState(() {
                          householdItemsShapeValue = newValue1!;
                          if (householdItemsShapeValue == '...') {
                            householdItemsSizeValue = '...';
                            _isButtonVisible = false;
                            _isHouseholdItemsSizeDisable=true;
                          }
                          else if (householdItemsTypeValue == 'Бак' && householdItemsShapeValue == '20,0 л'){
                            // householdItemsSizeList=householdItemsCylindricalWithRimSizeList;
                            workWithSecondDropButton();
                          }
                          else if (householdItemsTypeValue == 'Бак' && householdItemsShapeValue == '32,0 л'){
                            // householdItemsSizeList=householdItemsSphericalWithRimSizeList;
                            workWithSecondDropButton();
                          }
                          else if (householdItemsTypeValue == 'Бак' && householdItemsShapeValue == '40,0 л'){
                            // householdItemsSizeList=householdItemsCylindricalWithoutRimSizeList;
                            workWithSecondDropButton();
                          }
                          else if (householdItemsTypeValue == 'Ведро' && householdItemsShapeValue == 'Сварное'){
                            // householdItemsSizeList=householdItemsSphericalWithoutRimSizeList;
                            workWithSecondDropButton();
                          }
                          else if (householdItemsTypeValue == 'Ведро' && householdItemsShapeValue == 'Цельнотянутое'){
                            householdItemsSizeList=stampedBucketSizeList;
                            workWithSecondDropButton();
                          }
                          else if (householdItemsTypeValue == 'Ковш' && householdItemsShapeValue == 'без крышки'){
                            householdItemsSizeList=ladlesSizeList;
                            workWithSecondDropButton();
                          }
                          else if (householdItemsTypeValue == 'Ковш' && householdItemsShapeValue == 'с крышкой'){
                            householdItemsSizeList=ladlesSizeList;
                            workWithSecondDropButton();
                          }
                          else if (householdItemsTypeValue == 'Кружка' && householdItemsShapeValue == '0,25 л'){
                            // householdItemsSizeList=poznicaSizeList;
                            workWithSecondDropButton();
                          }
                          else if (householdItemsTypeValue == 'Кружка' && householdItemsShapeValue == '0,4 л'){
                            // householdItemsSizeList=poznicaSizeList;
                            workWithSecondDropButton();
                          }
                          else if (householdItemsTypeValue == 'Кружка' && householdItemsShapeValue == '1,0 л'){
                            // householdItemsSizeList=poznicaSizeList;
                            workWithSecondDropButton();
                          }

                        });
                      },
                    ),// Список выбора формы корпуса
                    const SizedBox(height: 50,),
                    const Text('Выберите вместимость:'),
                    DropdownButton(
                      value: householdItemsSizeValue,
                      items: householdItemsSizeList.map<DropdownMenuItem<String>>((String value) {return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );}).toList(),
                      onChanged: _isHouseholdItemsSizeDisable? null : (String? newValue2){
                        setState(() {
                          householdItemsSizeValue = newValue2!;
                          if (householdItemsSizeValue == '...') {_isButtonVisible = false;}
                          else {_isButtonVisible=true;}
                        });
                      },
                    ),// Список выбора вместимости изделия
                    const SizedBox(height: 50,),
                    Text('Выбран тип кастрюли: "$householdItemsTypeValue",',
                      textAlign: TextAlign.start,
                    ),// Вывод выбранного типа кастрюли
                    Text('Выбрана форма: "$householdItemsShapeValue"',
                      textAlign: TextAlign.center,),// Вывод выбранной формы изделия
                    Text('Выбрана вместимость: "$householdItemsSizeValue"',
                      textAlign: TextAlign.center,),// Вывод выбранной вместимости изделия
                    const SizedBox(height: 50,),
                    Visibility(
                      visible: _isButtonVisible,
                      child: SizedBox(width:250, height:55,
                        child: ElevatedButton(
                          onPressed: () {
                            if (householdItemsTypeValue == 'Бак' && householdItemsShapeValue == '20,0 л') {householdItemsArt= '2827';householdItemsName=art2827;}
                            else if (householdItemsTypeValue == 'Бак' && householdItemsShapeValue == '32,0 л') {householdItemsArt= '2829';householdItemsName=art2829;}
                            else if (householdItemsTypeValue == 'Бак' && householdItemsShapeValue == '40,0 л') {householdItemsArt= '2833';householdItemsName=art2833;}
                            else if (householdItemsTypeValue == 'Бак' && householdItemsShapeValue == '40,0 л') {householdItemsArt= '2833';householdItemsName=art2833;}
                            else if (householdItemsTypeValue == 'Ведро' && householdItemsShapeValue == 'Сварное') {householdItemsArt= '1224';householdItemsName=art1224;}
                            else if (householdItemsTypeValue == 'Ведро' && householdItemsShapeValue == 'Цельнотянутое'&& householdItemsSizeValue == '9,0 л') {householdItemsArt= '1222.Ц';householdItemsName=art1222C;}
                            else if (householdItemsTypeValue == 'Ведро' && householdItemsShapeValue == 'Цельнотянутое'&& householdItemsSizeValue == '12,0 л') {householdItemsArt= '1224.Ц';householdItemsName=art1224C;}
                            else if (householdItemsTypeValue == 'Ковш' && householdItemsShapeValue == 'без крышки'&& householdItemsSizeValue == '2,0 л') {householdItemsArt= '2011';householdItemsName=art2011;}
                            else if (householdItemsTypeValue == 'Ковш' && householdItemsShapeValue == 'с крышкой'&& householdItemsSizeValue == '2,0 л') {householdItemsArt= '2111';householdItemsName=art2111;}
                            else if (householdItemsTypeValue == 'Кружка' && householdItemsShapeValue == '0,25 л') {householdItemsArt= '0102';householdItemsName=art0102;}
                            else if (householdItemsTypeValue == 'Кружка' && householdItemsShapeValue == '0,4 л') {householdItemsArt= '0103';householdItemsName=art0103;}
                            else if (householdItemsTypeValue == 'Кружка' && householdItemsShapeValue == '1,0 л') {householdItemsArt= '0207';householdItemsName=art0207;}
                            else if (householdItemsTypeValue == 'Дуршлаг') {householdItemsArt= '1406';householdItemsName=art1406;}
                            else if (householdItemsTypeValue == 'Бидон') {householdItemsArt= '0612';householdItemsName=art0612;}
                            else if (householdItemsTypeValue == 'Горшок ночной') {householdItemsArt= '0908';householdItemsName=art0908;}
                            Navigator.pushNamed(context, HouseholdItemsDrawingSelectionScreen.routeName, arguments: PassedFromHouseholdItemsSelectionScreenArguments(
                              householdItemsTypeValue,
                              householdItemsShapeValue,
                              householdItemsSizeValue,
                              householdItemsArt,
                              householdItemsName,
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
                    ),// Появляющаяся кнопка перехода на экран выбора чертежа
                    const Expanded(child: SizedBox(height: 50,)),// Отступ по вертикали
                  ],
                ),
              ),
            ),// Виджет для задания габаритов
          ),
        ),
      ),
    );
  }

  void workWithFirstDropButton() {
    householdItemsShapeValue = '...';
    householdItemsSizeValue = '...';
    _isHouseholdItemsShapeDisable = false;
    _isHouseholdItemsSizeDisable= true;
    _isButtonVisible=false;
  }

  void workWithSecondDropButton() {
    householdItemsSizeValue = '...';
    _isHouseholdItemsSizeDisable = false;
    _isButtonVisible=false;
  }
}
