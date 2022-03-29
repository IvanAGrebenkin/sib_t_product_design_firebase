import 'package:flutter/material.dart';
import '../Utils/decoration.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.bottomCenter,
                    image: AssetImage('assets/images/sibt_auth_ background.png'),
                    fit: BoxFit.fitWidth,
                  ),// Задний фон
                ),
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 100),// Отступ
                      SizedBox(
                        width: 165,
                        height: 105,
                        child: Image.asset ('assets/images/logo SibTov.png')),//Логотип "Сибирские товары"
                      const SizedBox(height: 35),// Отступ
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
                      const SizedBox(height: 40),// Отступ
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
                      const SizedBox(height: 40),// Отступ
                      SizedBox(
                        width:154,
                        height:42,
                        child: ElevatedButton(
                            style: elevatedButtonDecoration,
                            onPressed: (){},
                            child: const Text('Войти',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                        ),
                      ),// Кнопка 'Войти'
                      const SizedBox(height: 380),// Отступ
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
