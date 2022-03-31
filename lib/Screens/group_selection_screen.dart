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
                SizedBox(height: 150,width: 300,
                  child: ElevatedButton(
                    style:ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: (){},
                    child: Column(
                      children: [
                        Expanded(child: Image.asset ('assets/images/logo SibTov.png',),),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Кастрюли',
                            style: TextStyle(
                              color: Colors.blueAccent,
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


