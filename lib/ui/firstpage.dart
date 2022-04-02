import 'package:flutter/material.dart';
import 'package:flutter_belajar_navigator/model/dataClass.dart';
import 'package:flutter_belajar_navigator/ui/secondpage.dart';

class FirstPage extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Page'),),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _pindahHalaman(context);
          }, 
          child: Text('Go to Second Page'),),),
    );
  }

  void _pindahHalaman(BuildContext context) async {
    // Navigator.push returns a Future that completes after calling
    // Navigator.pop on the Selection Screen.
    final result = await Navigator.push(
      context,
      // Create the SelectionScreen in the next step.
      MaterialPageRoute(builder: (context) => SecondPage(),),
    );

    ScaffoldMessenger.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text('$result')));
  }
}