import 'package:flutter/material.dart';

const textFormFieldDecoration = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(36.0)),
  borderSide: BorderSide(
    color: Color(0xffECEFF1),
    width: 2.0,
  ),
);// Оформление полей ввода текста на странице авторизации

final elevatedButtonDecoration= ElevatedButton.styleFrom(
  primary: const Color(0xff0079D0),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(36.0),
  ),
);// Оформление кнопок

const backgroundOfOthersScreen = BoxDecoration(
  image: DecorationImage(
  alignment: Alignment.bottomCenter,
  image: AssetImage('assets/images/background_of_other_screens.png'),
  fit: BoxFit.fill,
  ),// Задний фон
);

final groupButtonDecoration= ElevatedButton.styleFrom(
  primary: Colors.white,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(25.0),
  ),
);// Оформление кнопок страницы выбора группы изделий

const groupSelectionButtonTextStyle = TextStyle(fontSize: 15,color: Color(0xff0079D0),);