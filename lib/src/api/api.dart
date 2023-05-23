// import 'package:flutter/material.dart';
// import 'package:flutter_parse/flutter_parse.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   final keyApplicationId = 'myappId';
//   final keyClientKey = 'DXmeuwzNjZWV';
//   final keyParseServerUrl = 'http://192.168.10.234/parse';
//
//   await Parse().initialize(keyApplicationId, keyParseServerUrl,
//       clientKey: keyClientKey, autoSendSessionId: true);
//
//   var firstObject = ParseObject('FirstClass')
//     ..set(
//         'message', 'Hey ! First message from Flutter. Parse is now connected');
//   await firstObject.save();
//
//   print('done');
// }
