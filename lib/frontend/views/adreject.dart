// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// class adreject extends StatefulWidget {
//   const adreject({super.key});

//   @override
//   State<adreject> createState() => _adrejectState();
// }

// class _adrejectState extends State<adreject> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).colorScheme.background,
//       appBar: AppBar(),
//       body: Padding(
//         padding: const EdgeInsets.all(12),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               SvgPicture.asset(
//                 'assets/svg/adreject.svg', // Replace this with the path to your SVG file
//                 width: 200, // You can adjust the size as needed
//                 height: 200, // You can adjust the size as needed
//               ),
//               const SizedBox(
//                   height: 20), // Add some spacing between the image and text
//               const Text(
//                 'Try Again',
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const Text(
//                 'If problems persist please email: admin@equiposdeconstruccion.com',
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 16,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class adreject extends StatefulWidget {
  const adreject({super.key});

  @override
  State<adreject> createState() => _adrejectState();
}

class _adrejectState extends State<adreject> {
  @override
  Widget build(BuildContext context) {
    // Get the screen size
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(screenSize.width * 0.03),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                'assets/svg/adreject.svg',
                width: screenSize.width * 0.5,
                height: screenSize.height * 0.3,
              ),
              SizedBox(
                height: screenSize.height * 0.05,
              ),
              Text(
                // 'Try Again',
                AppLocalizations.of(context)!.tryAgain,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: screenSize.width * 0.07,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                AppLocalizations.of(context)!.ifProblemsPersist,
                // 'If problems persist please email: admin@equiposdeconstruccion.com',
                style: GoogleFonts.poppins(
                  color: Colors.grey,
                  fontSize: screenSize.width * 0.03,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
