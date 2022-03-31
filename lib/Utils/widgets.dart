import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

PreferredSizeWidget homePageAppBar(context, pageName) => AppBar(
    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () { Scaffold.of(context).openDrawer(); },
          tooltip: 'Открыть меню навигации',
        );
      },
    ),
    title: Center(
        child: Text('$pageName',
          style: const TextStyle(
            fontSize: 20,
          ),
      )
    ),
);// AppBar для страницы выбора группы

PreferredSizeWidget nextPageAppBar(context, pageName) => AppBar(
    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () { Scaffold.of(context).openDrawer(); },
          tooltip: 'Открыть меню навигации',
        );
      },
    ),
    title: Center(
        child: Text('$pageName',
          style: const TextStyle(
            fontSize: 18,
          ),
        )
    ),
    actions: <Widget>[
      IconButton(
        tooltip: 'На начальную страницу',
        onPressed: (){Navigator.pushNamed(context, '/');},
        icon: const Icon(Icons.home),),// Кнопка перехода на главный экран
      IconButton(
        tooltip: 'На предыдущую страницу',
        onPressed: (){Navigator.pop(context);},
        icon: const Icon(Icons.arrow_back),),// Кнопка перехода на главный экран
    ]
);// AppBar для последующих страниц


Widget navDrawer(context) => Drawer(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const SizedBox(height: 80,),
      SizedBox(
        width: 165,
        height: 105,
        child: Image.asset ('assets/images/logo SibTov.png')),//Логотип "Сибирские товары"
      const SizedBox(height: 15,),
      const Divider(
        thickness: 2,
      ),
      ListTile(
        leading: SizedBox(
          child: Image.asset ('assets/images/pan_group.png',),
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 40.0),
          child: Text('Кастрюли',),
        ),
        onTap: (){},
      ),// Кнопка перехода к списку кастрюль
      ListTile(
        leading: SizedBox(
          child: Image.asset ('assets/images/kettle_group.png',),
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 38.0),
          child: Text('Чайники'),
        ),
        onTap: (){},
      ),// Кнопка перехода к списку чайников
      ListTile(
        leading: SizedBox(
          child: Image.asset ('assets/images/household_items_group.png',),
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 22.0),
          child: Text('Хозяйственные изделия'),
        ),
        onTap: (){},
      ),// Кнопка перехода к к списку хозяйственных изделий
      ListTile(
        leading: SizedBox(
          child: Image.asset ('assets/images/flat_items_group.png',),
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 45.0),
          child: Text('Плоские изделия'),
        ),
        onTap: (){},
      ),// Кнопка перехода к к списку плоских изделий
      const Divider(
        thickness: 2,
      ),
      ListTile(
        leading: const Icon(Icons.exit_to_app,
          color: Colors.blueAccent,),
        title: const Text('Закрыть приложение'),
        onTap: (){SystemChannels.platform.invokeMethod('SystemNavigator.pop');},
      ),// Кнопка выхода из приложения
      const Divider(
        thickness: 2,
      ),
      Expanded(child: const SizedBox()),
      SizedBox(
          child: Image.asset ('assets/images/sibt_auth_background.png')),//Фоновое изображение

    ],
  ),
);