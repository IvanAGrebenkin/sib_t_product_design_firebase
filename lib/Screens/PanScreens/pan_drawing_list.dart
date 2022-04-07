import 'package:flutter/material.dart';

import '../../Utils/decoration.dart';

class PanDrawingListWidget extends StatelessWidget {
  const PanDrawingListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: backgroundOfOthersScreen,
      child: ListView.builder(
          itemCount: 10,
          itemExtent: 150,
          itemBuilder: (BuildContext context, int index){
            return Row(children: [
              Image(image: AssetImage('assets/drawings/pans/1607/01.png')),
              Text('khkgh'),
            ],);
          }
      ),
    );
  }
}