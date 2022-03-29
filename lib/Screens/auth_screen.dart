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
              // Container(
              //   // height:100,
              //   height: double.infinity,
              // ),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.bottomCenter,
                    image: AssetImage('assets/images/sibt_auth_ background.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 50),
                // width: double.infinity,
                // height: double.infinity,
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
                      SizedBox(height: 40),// Отступ
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
                      SizedBox(height: 40),// Отступ
                      ElevatedButton(
                        onPressed: (){},
                        child: Text('Войти'),),// Кнопка "Войти"
                      SizedBox(height: 380),// Отступ
                      // InkWell(
                      //   child: Text('Регистрация'),
                      // ),// Ссылка на "Регистрацию"
                      // SizedBox(height: 50),// Отступ
                      // InkWell(
                      //   child: Text('Забыли пароль?'),
                      // ),// Ссылка на "Забыли пароль?"
                      // SizedBox(height: 50),// Отступ

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
