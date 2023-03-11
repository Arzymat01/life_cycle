// import 'package:flutter/material.dart';

// class SecondPage extends StatefulWidget {
//   const SecondPage({Key? key}) : super(key: key);

//   @override
//   _SecondPageState createState() => _SecondPageState();
// }

// class _SecondPageState extends State<SecondPage> {
//   Color? _color;
//   @override
//   void initState() {
//     changeColor(Colors.amber, 2);
//     print('initState');
//     super.initState();
//   }

//   Future<void> changeColor(Color? color, int seconds) async {
//     await Future.delayed(Duration(seconds: seconds));
//     _color = color;
//     setState(() {});
//   }

//   @override
//   void didChangeDependencies() {
//     print('didChangeDependencies');
//     changeColor(Colors.red, 4);
//     super.didChangeDependencies();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: _color,
//       appBar: AppBar(title: const Text('SecondPage')),
//     );
//   }

//   @override
//   void dispose() {
//     print('dispose null');
//     _color = null;
//     // TODO: implement dispose
//     super.dispose();
//   }
// }
