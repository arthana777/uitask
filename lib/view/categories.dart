// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Category extends StatefulWidget {
//   Category({Key? key}) : super(key: key);
//
//   @override
//   State<Category> createState() => _CategoryState();
// }
//
// class _CategoryState extends State<Category> {
//   var selectedIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     final Size screenSize = MediaQuery.of(context).size;
//
//     return GestureDetector(
//       onTap: () {
//         setState(() {});
//       },
//       child: Container(
//         height: screenSize.height * 0.07,
//         width: screenSize.width * 0.8,
//         decoration: BoxDecoration(color: Colors.white),
//         child: Center(
//           child: SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               children: List.generate(
//                 items.length,
//                     (index) => Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     height: screenSize.height * 0.04,
//                     width: screenSize.width * 0.2,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(20),
//                       boxShadow: [
//                         BoxShadow(blurRadius: 1),
//                       ],
//                     ),
//                     child: Center(
//                       child: Text(
//                         items[index],
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontWeight: selectedIndex == index
//                               ? FontWeight.bold
//                               : FontWeight.normal,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
