import 'package:flutter/material.dart';
import 'package:flutter_belajar_navigator/model/dataClass.dart';

class SecondPage extends StatelessWidget {
  static const routeName = '/second_page';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Second Page'),),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: (){
              Navigator.pop(context, "Ya");
            }, child: Text("Ya"),
            ),
            SizedBox(width: 20,height: 20,),
            ElevatedButton(
            onPressed: (){
              Navigator.pop(context, "Tidak");
            }, child: Text("Tidak"),
            ),
          ],
          ),
          ),
    );
  }
}