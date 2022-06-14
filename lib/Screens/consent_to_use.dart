import 'package:flutter/material.dart';
import '../Utils/decoration.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:async';
import 'dart:io';

class AccountStorage {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/account.txt');
  }

  Future<String> readAccount() async {
    try {
      final file = await _localFile;

      // Read the file
      // final contents = await file.readAsString();
      //
      // return string.parse(contents);
      return file.readAsString();
    } catch (e) {
      // If encountering an error, return 0
      return '0';
    }
  }

  Future<File> writeAccount(String account) async {
    final file = await _localFile;

    // Write the file
    return file.writeAsString(account);
  }
}

class ConsentToUse extends StatefulWidget {
  const ConsentToUse({super.key, required this.storage});

  final AccountStorage storage;
  @override
  _ConsentToUseState createState() => _ConsentToUseState();
}



class _ConsentToUseState extends State<ConsentToUse> {

  String _account = '0';

  bool confirm = false;
  bool _isDisable = true;// Переменная активности второго списка

  @override
  void initState() {
    super.initState();
    widget.storage.readAccount().then((value) {
      setState(() {
        _account = value;
      });
    });
  }

  Future<File> _saveAccount() {
    setState(() {
      _account='1';
    });
    // Write the variable as a string to the file.
    return widget.storage.writeAccount(_account);
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: backgroundOfOthersScreen,// Задание фонового изображения
          child: Column(
            children: [
              const SizedBox(height: 200,),// Отступ по вертикали
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,// Расположение Checkbox перед описанием
                value: confirm,
                onChanged: (value) {setState(() {
                  confirm = !confirm;
                  if(confirm==false){_isDisable = true; }
                  else{_isDisable = false; }
                  });
                },
                title: const Text('Я принимаю условия данного соглашения'),// Текст описания
              ),// CheckBox с описанием
              const SizedBox(height: 30,),// Отступ по вертикали
              SizedBox(
                width:154,
                height:42,
                child: ElevatedButton(
                  style: elevatedButtonDecoration,// Оформление кнопки
                  onPressed: _isDisable? null : () {
                    _saveAccount();
                    Navigator.pushNamed(context, '/group_selection_screen');
                    setState((){});},// Действие по нажатию
                  child: const Text('Принять',
                    style: TextStyle(
                      fontSize: 18,
                    ),// Стиль текста
                  ),// Текст внутри кнопки
                ),
              ),// Активируемая/деактивируемая кнопка 'Поехали!'
            ],
          ),
        ),
      ),
    );
  }
}
