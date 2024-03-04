import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:quotaserver/frontend/widgets/textstyle.dart';

class adreview extends StatefulWidget {
  const adreview({super.key});

  @override
  State<adreview> createState() => _adreviewState();
}

class _adreviewState extends State<adreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 100,
              ),
              Image.asset("assets/images/addreview.png"),
              const SizedBox(
                height: 30,
              ),
              MyTexxtStyle(
                // text: "Ad Confirmed !",
                text: AppLocalizations.of(context)!.adConfirmed,
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
              MyTexxtStyle(
                text: AppLocalizations.of(context)!.orderConfirmed,
                // text:
                //     "Your order has been confirmed, we will send you confirmation email shortly.",
                fontSize: 18,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.center,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
