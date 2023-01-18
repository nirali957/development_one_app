// import 'package:flutter/material.dart';
// import 'package:second_development_app/staggered_view.dart';
// // import 'package:task/AllTypesScreen/navigation_two_screen.dart';
//
// class NavigationOneScreen extends StatefulWidget {
//   const NavigationOneScreen({super.key, this.text});
//   final String? text;
//
//   @override
//   State<NavigationOneScreen> createState() => _NavigationOneScreenState();
// }
//
// class _NavigationOneScreenState extends State<NavigationOneScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Second Screen ${widget.text}"),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             ElevatedButton(
//               onPressed: () => Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => const NavigationTwoScreen(),
//                 ),
//               ),
//               child: const Text("N E X T S C R E E N"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:second_development_app/naavigator_screen.dart';
// // import 'package:task/AllTypesScreen/navigation_one_screen.dart';
//
// class NavigationTwoScreen extends StatefulWidget {
//   const NavigationTwoScreen({super.key});
//
//   @override
//   State<NavigationTwoScreen> createState() => _NavigationTwoScreenState();
// }
//
// class _NavigationTwoScreenState extends State<NavigationTwoScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Column(
//           children: [
//             ElevatedButton(
//               onPressed: () => Navigator.pop(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => const NavigationOneScreen(),
//                 ),
//               ),
//               child: const Text("B A C K SC R E E N"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
