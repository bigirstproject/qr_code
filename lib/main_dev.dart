// import 'dart:async';
// import 'dart:typed_data';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:qrscan/qrscan.dart' as scanner;
//
//
//
// // 对应的是 qrscan: ^0.2.17
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   Uint8List bytes = Uint8List(0);
//   TextEditingController _outputController;
//
//   @override
//   initState() {
//     super.initState();
//     this._outputController = new TextEditingController();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.grey[300],
//         body: Builder(
//           builder: (BuildContext context) {
//             return ListView(
//               children: <Widget>[
//                 Container(
//                   color: Colors.white,
//                   child: Column(
//                     children: <Widget>[
//                       SizedBox(height: 20),
//                       TextField(
//                         controller: this._outputController,
//                         readOnly: true,
//                         maxLines: 2,
//                         decoration: InputDecoration(
//                           prefixIcon: Icon(Icons.wrap_text),
//                           helperText: 'The barcode or qrcode you scan will be displayed in this area.',
//                           hintText: 'The barcode or qrcode you scan will be displayed in this area.',
//                           hintStyle: TextStyle(fontSize: 15),
//                           contentPadding: EdgeInsets.symmetric(horizontal: 7, vertical: 15),
//                         ),
//                       ),
//                       SizedBox(height: 20),
//                       this._buttonGroup(),
//                       SizedBox(height: 70),
//                     ],
//                   ),
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
//
//
//   Widget _buttonGroup() {
//     return Row(
//       children: <Widget>[
//         Expanded(
//           flex: 1,
//           child: SizedBox(
//             height: 120,
//             child: InkWell(
//               onTap: _scan,
//               child: Card(
//                 child: Column(
//                   children: <Widget>[
//                     Expanded(
//                       flex: 2,
//                       child: Image.asset('images/scanner.png'),
//                     ),
//                     Divider(height: 20),
//                     Expanded(flex: 1, child: Text("Scan")),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//         Expanded(
//           flex: 1,
//           child: SizedBox(
//             height: 120,
//             child: InkWell(
//               onTap: _scanPhoto,
//               child: Card(
//                 child: Column(
//                   children: <Widget>[
//                     Expanded(
//                       flex: 2,
//                       child: Image.asset('images/albums.png'),
//                     ),
//                     Divider(height: 20),
//                     Expanded(flex: 1, child: Text("Scan Photo")),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
//   Future _scan() async {
//     String barcode = await scanner.scan();
//     this._outputController.text = barcode;
//     print("_scan barcode =  $barcode");
//   }
//
//   Future _scanPhoto() async {
//     String barcode = await scanner.scanPhoto();
//     this._outputController.text = barcode;
//     print("_scanPhoto barcode =  $barcode");
//   }
//
//
// }