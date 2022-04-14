import 'package:flutter/material.dart';
import '../Utils/decoration.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: MediaQuery.of(context).size.width,
              minHeight: MediaQuery.of(context).size.height,
            ),// Ограничения в соответствии с разрешением экрана устройства
            child: IntrinsicHeight(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Expanded(child: SizedBox()),// Отступ по вертикали
                  SizedBox(
                      width: 165,
                      height: 105,
                      child: Image.asset ('assets/images/logo SibTov.png')),//Логотип "Сибирские товары"
                  const SizedBox(height: 35),// Отступ по вертикали
                  SizedBox(width: 244, height: 40,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        enabledBorder: textFormFieldDecoration,
                        focusedBorder: textFormFieldDecoration,
                        filled: true,
                        fillColor: Color(0xffECEFF1),
                        labelText: 'Логин',),
                    ),
                  ),// Поле ввода Логина
                  const SizedBox(height: 40),// Отступ по вертикали
                  SizedBox(width: 244, height: 40,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        enabledBorder: textFormFieldDecoration,
                        focusedBorder: textFormFieldDecoration,
                        filled: true,
                        fillColor: Color(0xffECEFF1),
                        labelText: 'Пароль',),
                    ),
                  ),// Поле ввода Пароля
                  const SizedBox(height: 40),// Отступ по вертикали
                  SizedBox(
                    width:154,
                    height:42,
                    child: ElevatedButton(
                      style: elevatedButtonDecoration,// Оформление кнопки
                      onPressed: (){Navigator.pushNamed(context, '/consent_to_use');},// Действие по нажатию
                      child: const Text('Войти',
                        style: TextStyle(
                          fontSize: 18,
                        ),// Стиль текста
                      ),// Текст внутри кнопки
                    ),
                  ),// Кнопка "Войти"
                  const Expanded(child: SizedBox()),// Отступ по вертикали
                  SizedBox(child: Image.asset ('assets/images/sibt_auth_background.png')),// Фоновый рисунок
                ],
              ),
            ),
          ),// Виджет для задания габаритов
        ),// Скроллинг страницы
      ),
    );
  }
}
