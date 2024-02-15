import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);

//   final String headTitle; //head title
//   final IconData actionIcon;
//   final VoidCallback onActionIconPressed;

//   const MyAppBar({
//     Key? key,
//     required this.headTitle,
//     required this.actionIcon,
//     required this.onActionIconPressed,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     try {
//       return AppBar(
//         centerTitle: true,
//         title: Text(
//           headTitle,
//           textAlign: TextAlign.center,
//           style: GoogleFonts.poppins(
//             fontSize: 24,
//             color: Theme.of(context).colorScheme.secondary,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(actionIcon),
//             onPressed: onActionIconPressed,
//             color: Theme.of(context).colorScheme.primary,
//           ),
//         ],
//       );
//     } catch (e) {
//       return AppBar(
//         centerTitle: true,
//         title: Text(
//           'Error',
//           textAlign: TextAlign.center,
//           style: GoogleFonts.poppins(
//             fontSize: 24,
//             color: Colors.red,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//       );
//     }
//   }
// }
class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  final String? headTitle; //head title
  final IconData? actionIcon;
  final VoidCallback? onActionIconPressed;
  final bool showActionIcon;
  final bool showTitle;
  final TextAlign textAlign;

  const MyAppBar({
    Key? key,
    this.headTitle,
    this.actionIcon,
    this.onActionIconPressed,
    this.showActionIcon = false,
    this.showTitle = true,
    this.textAlign = TextAlign.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    try {
      return AppBar(
        centerTitle: true,
        title: showTitle
            ? Text(
                headTitle ?? '',
                textAlign: textAlign,
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.w600,
                ),
              )
            : null,
        actions: showActionIcon
            ? <Widget>[
                IconButton(
                  icon: Icon(actionIcon),
                  onPressed: onActionIconPressed,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ]
            : null,
      );
    } catch (e) {
      return AppBar(
        centerTitle: true,
        title: Text(
          'Error',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontSize: 24,
            color: Colors.red,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
    }
  }
}
