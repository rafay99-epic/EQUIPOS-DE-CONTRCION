import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  final String? headTitle; //head title
  final IconData? actionIcon;
  final VoidCallback? onActionIconPressed;
  final bool showActionIcon;
  final bool showTitle;
  final TextAlign textAlign;
  final Color? titleColor;
  final Color? backgroundColor;
  final IconData? actionIcon2;
  final VoidCallback? onActionIcon2Pressed;
  final bool showActionIcon2;
  final bool customizeIcon1;
  final bool customizeIcon2;
  final Color? icon1BackgroundColor;
  final Color? icon1Color;
  final Color? icon2BackgroundColor;
  final Color? icon2Color;

  const MyAppBar({
    Key? key,
    this.headTitle,
    this.actionIcon,
    this.onActionIconPressed,
    this.showActionIcon = false,
    this.showTitle = true,
    this.textAlign = TextAlign.center,
    this.showActionIcon2 = false,
    this.titleColor,
    this.backgroundColor,
    this.actionIcon2,
    this.onActionIcon2Pressed,
    this.customizeIcon1 = false,
    this.icon1BackgroundColor,
    this.icon1Color,
    this.customizeIcon2 = false,
    this.icon2BackgroundColor,
    this.icon2Color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    try {
      return AppBar(
        centerTitle: true,
        backgroundColor: backgroundColor,
        title: showTitle
            ? Text(
                headTitle ?? '',
                textAlign: textAlign,
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  color: titleColor,
                  fontWeight: FontWeight.w600,
                ),
              )
            : null,
        actions: showActionIcon
            ? <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Row(
                    children: [
                      if (showActionIcon)
                        customizeIcon1
                            ? CircleAvatar(
                                radius: 15,
                                backgroundColor: icon1BackgroundColor,
                                child: IconButton(
                                  icon: Icon(actionIcon, color: icon1Color),
                                  onPressed: onActionIconPressed,
                                  padding: EdgeInsets.zero,
                                  iconSize: 24,
                                ),
                              )
                            : IconButton(
                                icon: Icon(actionIcon),
                                onPressed: onActionIconPressed,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                      const SizedBox(
                        width: 8,
                      ),
                      if (showActionIcon2)
                        customizeIcon2
                            ? CircleAvatar(
                                radius: 15,
                                backgroundColor: icon2BackgroundColor,
                                child: IconButton(
                                  icon: Icon(actionIcon2, color: icon2Color),
                                  onPressed: onActionIcon2Pressed,
                                  padding: EdgeInsets.zero,
                                  iconSize: 24,
                                ),
                              )
                            : IconButton(
                                icon: Icon(actionIcon2),
                                onPressed: onActionIcon2Pressed,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                    ],
                  ),
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
