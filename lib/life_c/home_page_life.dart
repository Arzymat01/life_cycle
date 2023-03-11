// import 'package:flutter/material.dart';
// import 'package:life_cycle/life_c/second_page.dart';

// class HomePaga_lifeC extends StatefulWidget {
//   const HomePaga_lifeC({Key? key}) : super(key: key);

//   @override
//   // ignore: no_logic_in_create_state
//   _HomePaga_lifeCState createState() {
//     print('createState');
//     return _HomePaga_lifeCState();
//   }
// }

// class _HomePaga_lifeCState extends State<HomePaga_lifeC> {
//   @override
//   void initState() {
//     print('initState');
//     super.initState();
//   }

//   @override
//   void didChangeDependencies() {
//     print('didChangeDependencies');
//     super.didChangeDependencies();
//   }

//   // @override
//   // void dirty() {
//   //   super.dirty();
//   // }

//   // @override
//   // clean() {
//   //   super.clean();
//   // }

//   // @override
//   // void didUpdateWidget(covariant HomePage oldWidget) {
//   //   super.didUpdateWidget(oldWidget);
//   // }

//   // @override
//   // void setState(VoidCallback fn) {
//   //   // TODO: implement setState
//   //   super.setState(fn);
//   // }

//   Widget build(BuildContext context) {
//     print('build');
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("HomePage"),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => const SecondPage(),
//             ),
//           );
//         },
//         child: const Icon(Icons.heart_broken),
//       ),
//     );
//   }
// }
