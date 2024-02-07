import 'package:flutter/material.dart';
import 'package:quotaserver/constant/theme/colors.dart';
import 'package:quotaserver/frontend/screens/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

//pre caching of Images
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: lightmode,
//       debugShowCheckedModeBanner: false,
//       home: FutureBuilder(
//         // Pre-cache image
//         future: precacheImage(
//           const AssetImage('assets/images/logo_1.png'),
//           context,
//         ),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             return const SplashScreen();
//           } else {
//             // While image is loading, display a loading indicator
//             return const CircularProgressIndicator();
//           }
//         },
//       ),
//     );
//   }
// }

// Orginal Code
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightmode,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
