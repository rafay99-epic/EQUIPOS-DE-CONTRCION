import 'package:flutter/material.dart';
import 'package:quotaserver/frontend/widgets/myButton.dart';
import 'package:quotaserver/frontend/widgets/textstyle.dart';

void showReportDialog(BuildContext context) {
  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    barrierColor: Colors.black45,
    transitionDuration: const Duration(milliseconds: 200),
    pageBuilder: (
      BuildContext buildContext,
      Animation animation,
      Animation secondaryAnimation,
    ) {
      return Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              width: MediaQuery.of(context).size.width - 40,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 30,
                    ),
                    MyTexxtStyle(
                      text: "Report Profile",
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        MyTexxtStyle(
                          text: '• False Information',
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        MyTexxtStyle(
                          text: '• Hate speech or symbols',
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        MyTexxtStyle(
                          text: '• Bullying or harassment',
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        MyTexxtStyle(
                          text: '• Spam',
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    MyButton(
                      text: "Report",
                      textColor: Colors.red,
                      backgroundColor: Colors.transparent,
                      onTap: () {
                        //logic for firebase and sending the report to the backend
                      },
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      width: double.infinity,
                      isBold: true,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}
