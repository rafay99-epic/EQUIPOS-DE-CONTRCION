import 'package:flutter/material.dart';
import 'package:quotaserver/frontend/widgets/appbar.dart';
import 'package:quotaserver/frontend/widgets/myButton.dart';
import 'package:quotaserver/frontend/widgets/textstyle.dart';

class productalert extends StatefulWidget {
  const productalert({super.key});

  @override
  State<productalert> createState() => _productalertState();
}

class _productalertState extends State<productalert> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: const MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            MyTexxtStyle(
              text: "Product Alert",
              textAlign: TextAlign.center,
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(
              height: 50,
            ),
            const MyTexxtStyle(
              textAlign: TextAlign.center,
              text: "The “Excavators” you were looking for are here",
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            const SizedBox(
              height: 30,
            ),
            const MyTexxtStyle(
              textAlign: TextAlign.center,
              text: "(5) New Listings",
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            const SizedBox(
              height: 50,
            ),
            Image.asset("assets/images/0_logo_adjustments_edc_-07.png"),
            const SizedBox(
              height: 130,
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(
                  screenSize.width * 0.05,
                ),
                child: MyButton(
                  text: "View Listing",
                  textColor: Theme.of(context).colorScheme.secondary,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  onTap: () => {
                    //logic for the button
                  },
                  fontSize: 18.0,
                  width: double.infinity,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
