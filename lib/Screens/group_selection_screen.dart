import 'package:flutter/material.dart';

import '../Utils/decoration.dart';

class GroupSelectionScreen extends StatefulWidget {
  const GroupSelectionScreen({Key? key}) : super(key: key);

  @override
  State<GroupSelectionScreen> createState() => _GroupSelectionScreenState();
}

class _GroupSelectionScreenState extends State<GroupSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(),
        body: Container(
          decoration: backgroundOfOthersScreen,
          child: Center(
            child: Column(
              children: [
                Expanded(child: const SizedBox(height: 20,)),
                SizedBox(height: 126,width: 178,
                  child: ElevatedButton(
                    style: groupButtonDecoration,
                    onPressed: (){},
                    child: Column(
                      children: [
                        Expanded(child: Image.asset ('assets/images/pan_group.png',),),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Кастрюли',
                            textAlign: TextAlign.center,
                            style: groupSelectionButtonTextStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),// Кнопка выбора группы кастрюль
                const SizedBox(height: 20,),
                SizedBox(height: 126,width: 178,
                  child: ElevatedButton(
                    style: groupButtonDecoration,
                    onPressed: (){},
                    child: Column(
                      children: [
                        Expanded(child: Image.asset ('assets/images/pan_group.png',),),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Чайники',
                            textAlign: TextAlign.center,
                            style: groupSelectionButtonTextStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),// Кнопка выбора группы чайников
                const SizedBox(height: 20,),
                SizedBox(height: 126,width: 178,
                  child: ElevatedButton(
                    style: groupButtonDecoration,
                    onPressed: (){},
                    child: Column(
                      children: [
                        Expanded(child: Image.asset ('assets/images/pan_group.png',),),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Хозяйственные изделия',
                            textAlign: TextAlign.center,
                            style: groupSelectionButtonTextStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),// Кнопка выбора группы Хозяйственные изделия
                const SizedBox(height: 20,),
                SizedBox(height: 126,width: 178,
                  child: ElevatedButton(
                    style: groupButtonDecoration,
                    onPressed: (){},
                    child: Column(
                      children: [
                        Expanded(child: Image.asset ('assets/images/pan_group.png',),),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Плоские изделия',
                            textAlign: TextAlign.center,
                            style: groupSelectionButtonTextStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),// Кнопка выбора группы Плоские изделия
                Expanded(child: const SizedBox(height: 20,)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


