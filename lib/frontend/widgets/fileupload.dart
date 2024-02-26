// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class MyUploader extends StatefulWidget {
//   @override
//   _MyUploaderState createState() => _MyUploaderState();
// }

// class _MyUploaderState extends State<MyUploader> {
//   File? _file;

//   Future<void> pickFile() async {
//     final picker = ImagePicker();
//     final pickedFile = await picker.pickVideo(
//       source: ImageSource.gallery,
//       maxDuration: const Duration(seconds: 25),
//     );

//     if (pickedFile != null) {
//       setState(() {
//         _file = File(pickedFile.path);
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         ElevatedButton(
//           onPressed: pickFile,
//           child: const Text('Pick Image/Video'),
//         ),
//         if (_file != null) Text('File selected: ${_file!.path}'),
//       ],
//     );
//   }
// }
