//version 07:
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotaserver/frontend/widgets/appbar.dart';
import 'package:quotaserver/frontend/widgets/myButton.dart';

class Payment extends StatefulWidget {
  Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  final TextEditingController _cardNameController = TextEditingController();
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _expiryMonthController = TextEditingController();
  final TextEditingController _expiryYearController = TextEditingController();
  final TextEditingController _cvvNumberController = TextEditingController();

  bool _agreedToTOS = false;

  void _handlePayment() {
    String cardName = _cardNameController.text;
    String cardNumber = _cardNumberController.text;
    String expiryMonth = _expiryMonthController.text;
    String expiryYear = _expiryYearController.text;
    String cvvNumber = _cvvNumberController.text;

    // TODO: Add your payment processing logic here
    print('Card Name: $cardName');
    print('Card Number: $cardNumber');
    print('Expiry Month: $expiryMonth');
    print('Expiry Year: $expiryYear');
    print('CVV Number: $cvvNumber');
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    var padding = screenSize.width * 0.03; // 1% of screen width
    return Scaffold(
      appBar: MyAppBar(
        showTitle: true,
        headTitle: "Payment",
        textAlign: TextAlign.left,
        titleColor: Theme.of(context).colorScheme.primary,
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
          inputDecorationTheme: const InputDecorationTheme(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(padding),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 35,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: const BorderSide(color: Colors.grey),
                  ),
                  // elevation: 5.0,
                  shadowColor: Colors.black,
                  color: Colors.white,
                  child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: <Widget>[
                            TextField(
                              controller: _cardNameController,
                              decoration: InputDecoration(
                                labelText: 'Card Name',
                                labelStyle: GoogleFonts.poppins(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            TextField(
                              controller: _cardNumberController,
                              decoration: InputDecoration(
                                labelText: 'Card Number',
                                labelStyle: GoogleFonts.poppins(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: TextField(
                                    controller: _expiryMonthController,
                                    decoration: InputDecoration(
                                      labelText: 'MM',
                                      labelStyle: GoogleFonts.poppins(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                    ),
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                                const SizedBox(width: 16.0),
                                Expanded(
                                  child: TextField(
                                    controller: _expiryYearController,
                                    decoration: InputDecoration(
                                      labelText: 'YY',
                                      labelStyle: GoogleFonts.poppins(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                      suffixIcon: const Icon(Icons.help_outline,
                                          color: Colors.grey),
                                    ),
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                                const SizedBox(width: 16.0),
                                Expanded(
                                  child: TextField(
                                    controller: _cvvNumberController,
                                    decoration: InputDecoration(
                                      labelText: 'CVV',
                                      labelStyle: GoogleFonts.poppins(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                      suffixIcon: const Icon(Icons.help_outline,
                                          color: Colors.grey),
                                    ),
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 10.0,
                        right: 10.0,
                        child: Row(
                          children: <Widget>[
                            SvgPicture.asset(
                                'assets/svg/mastercard-svgrepo-com.svg',
                                width: 40.0),
                            const SizedBox(width: 10.0),
                            SvgPicture.asset('assets/svg/visa.svg',
                                width: 40.0),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Card(
                  color: const Color.fromRGBO(56, 61, 61, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  child: CheckboxListTile(
                    value: _agreedToTOS,
                    onChanged: (bool? newValue) {
                      setState(() {
                        _agreedToTOS = newValue!;
                      });
                    },
                    title: RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                            text:
                                'By tapping “AGREE AND CONTINUE” I accept the Simply Poem ',
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Payment Terms & Conditions, General Terms and Conditions, ',
                            style: GoogleFonts.roboto(
                              color: Theme.of(context).colorScheme.secondary,
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                            ),
                          ),
                          TextSpan(
                            text: 'and ',
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                            ),
                          ),
                          TextSpan(
                            text: 'Privacy and Cookies Notice',
                            style: GoogleFonts.roboto(
                              color: Theme.of(context).colorScheme.secondary,
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Colors.white,
                    checkColor: Colors.black,
                    tileColor: const Color.fromRGBO(56, 61, 61, 1),
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.all(
                      screenSize.width * 0.01,
                    ), // Adjust the padding as needed
                    child: MyButton(
                      text: "Agree & Continue",
                      textColor: Theme.of(context).colorScheme.tertiary,
                      backgroundColor: Theme.of(context).colorScheme.secondary,
                      onTap: () => {
                        //check for if check box is click agreed

                        //Process information from bank

                        //redirect to payment page sucessfull

                        //if payment failed then show error message
                      },
                      fontSize: 18.0,
                      width: 0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
