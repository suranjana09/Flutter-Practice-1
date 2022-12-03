// import 'dart:ui';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:osin/api/apiclient.dart';
// import 'package:osin/screens/second_screens.dart';

// Future fetchImages() async {
//   var response = await BaseClient().get('/photos');
//   return response;
// }

// Widget buildListView() => Container(
//     padding: EdgeInsets.only(top: 20),
//     height: 200,
//     child: FutureBuilder(
//       future: fetchImages(),
//       builder: (context, snapshot) {
//         if (snapshot.hasData == null) {
//           return CircularProgressIndicator();
//         } else {
//           return ListView.builder(
//               // physics: NeverScrollableScrollPhysics(),
//               padding: EdgeInsets.only(left: 10),
//               // itemExtent: 350,
//               shrinkWrap: true,
//               primary: true,
//               itemCount: snapshot.data?.length,
//               itemBuilder: (context, index) {
//                 return Row(
//                   children: [
//                     Container(
//                       width: 150,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Container(
//                             padding: EdgeInsets.only(left: 10),
//                             height: 150,
//                             width: 150,
//                             decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                   image: NetworkImage(
//                                     snapshot.data[index]['url'].toString(),
//                                     //  'https://i.pinimg.com/1200x/fa/96/6f/fa966f2794f277078e9f0379efdfb1bc.jpg'
//                                   ),
//                                 ),
//                                 borderRadius: BorderRadius.circular(30)),
//                           ),
//                           buildListTile(),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Container(
//                       width: 150,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Container(
//                             padding: EdgeInsets.only(left: 10),
//                             height: 150,
//                             width: 150,
//                             decoration: BoxDecoration(
//                                 image: const DecorationImage(
//                                   image: NetworkImage(
//                                     'https://i.pinimg.com/1200x/fa/96/6f/fa966f2794f277078e9f0379efdfb1bc.jpg',
//                                   ),
//                                 ),
//                                 borderRadius: BorderRadius.circular(30)),
//                           ),
//                           buildListTile()
//                         ],
//                       ),
//                     ),
//                   ],
//                 );
//               });
//         }
//       },
//     ));

// Widget buildListTile() => Container(
//       // alignment: Alignment.topLeft,
//       height: 70,

//       child: const ListTile(
//         title: Text(
//           'PRS Anniversary',
//           style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
//         ),
//         subtitle: Text(
//           'IDR 55,00,000.00',
//           style: TextStyle(
//             fontSize: 12,
//           ),
//         ),
//       ),
//     );
