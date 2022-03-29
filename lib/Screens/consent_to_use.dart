import 'package:flutter/material.dart';
import 'package:sib_t_product_design/Utils/decoration.dart';

class ConsentToUse extends StatefulWidget {
  const ConsentToUse({Key? key}) : super(key: key);

  @override
  State<ConsentToUse> createState() => _ConsentToUseState();
}

class _ConsentToUseState extends State<ConsentToUse> {

  bool confirm = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 200,),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              value: confirm,
              onChanged: (value) {
                setState(() {confirm = !confirm;});
              },
              title: const Text('Я принимаю условия данного соглашения'),
            ),
            const SizedBox(height: 30,),// Отступ
            SizedBox(
              width:154,
              height:42,
              child: ElevatedButton(
                style: elevatedButtonDecoration,
                onPressed: (){},
                child: const Text('Поехали!',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),// Кнопка 'Поехали!'
          ],
        ),
      ),
    );
  }
}
