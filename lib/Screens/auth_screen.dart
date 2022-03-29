import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50),// Отступ
              Container(),//Логотип "Сибирские товары"
              SizedBox(height: 50),// Отступ
              Text('Логин:'),
              SizedBox(height: 50),// Отступ
              TextField(),// Поле ввода Логина
              SizedBox(height: 50),// Отступ
              Text('Пароль:'),
              SizedBox(height: 50),// Отступ
              TextField(),// Поле ввода Пароля
              SizedBox(height: 50),// Отступ
              ElevatedButton(
                onPressed: (){},
                child: Text('Войти'),),// Кнопка "Войти"
              SizedBox(height: 50),// Отступ
              InkWell(
                child: Text('Регистрация'),
              ),// Ссылка на "Регистрацию"
              SizedBox(height: 50),// Отступ
              InkWell(
                child: Text('Забыли пароль?'),
              ),// Ссылка на "Забыли пароль?"
            ],
          ),
        ),
      ),
    );
  }
}
