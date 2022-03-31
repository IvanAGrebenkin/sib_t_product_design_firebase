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
        body: Container(
          decoration: backgroundOfOthersScreen,
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 100,),
                SizedBox(height: 147,width: 208,
                  child: ElevatedButton(
                    style: groupButtonDecoration,
                    onPressed: (){},
                    child: Column(
                      children: [
                        Expanded(child: Image.asset ('assets/images/pan_group.png',),),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Кастрюли',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff0079D0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


