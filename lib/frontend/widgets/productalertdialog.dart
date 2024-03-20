import 'package:flutter/material.dart';
import 'package:quotaserver/frontend/widgets/myButton.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart'; // Import this

class ProductAlertDialog extends StatefulWidget {
  const ProductAlertDialog({Key? key}) : super(key: key);

  @override
  State<ProductAlertDialog> createState() => _ProductAlertDialogState();
}

class _ProductAlertDialogState extends State<ProductAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              // 'Product Alert',
              AppLocalizations.of(context)!.productAlert,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 16.0),
            Image.asset(
              'assets/images/0_logo_adjustments_edc_-07.png', // replace with your image url
              fit: BoxFit.cover,
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 24.0),
            Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                  width: double.infinity,
                  child: MyButton(
                    // text: "View Listing",
                    text: AppLocalizations.of(context)!.viewListing,
                    textColor: Theme.of(context).colorScheme.secondary,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    onTap: () {},
                    fontSize: 18,
                    width: double.infinity,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
