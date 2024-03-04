import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotaserver/frontend/widgets/myButton.dart';
import 'package:quotaserver/frontend/widgets/ranger.dart';
import 'package:quotaserver/frontend/widgets/textfeild.dart';
import 'package:quotaserver/frontend/widgets/textstyle.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart'; // Import this

class MyFilterDialogBox extends StatefulWidget {
  const MyFilterDialogBox({super.key});

  @override
  State<MyFilterDialogBox> createState() => _MyFilterDialogBoxState();
}

class _MyFilterDialogBoxState extends State<MyFilterDialogBox> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _location = TextEditingController();
    var screenSize = MediaQuery.of(context).size;

    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: DefaultTabController(
        length: 3,
        child: SizedBox(
          height: 540, // adjust this size as needed
          width: 400,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: TabBar(
                  indicatorColor: Theme.of(context).colorScheme.secondary,
                  tabs: [
                    Tab(
                      child: Text(
                        // 'All',
                        AppLocalizations.of(context)!.all,
                        style: GoogleFonts.lato(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 22, // Change font size
                          fontWeight: FontWeight.w900, // Change font weight
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        // 'New',
                        AppLocalizations.of(context)!.newtag,
                        style: GoogleFonts.lato(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 22, // Change font size
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        // 'Used',
                        AppLocalizations.of(context)!.used,
                        style: GoogleFonts.lato(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 22, // Change font size
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10.0,
                          left: 20,
                          right: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: DropdownButton<String>(
                                isExpanded: true, // add this

                                hint: Text(
                                  AppLocalizations.of(context)!.category,
                                ),
                                items: <String>['A', 'B', 'C', 'D']
                                    .map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (_) {},
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: DropdownButton<String>(
                                hint: Text(
                                  AppLocalizations.of(context)!.model,
                                ),
                                isExpanded: true, // add this

                                items: <String>['1', '2', '3', '4']
                                    .map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (_) {},
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0.0), // adjust this value as needed
                        child: MyTextFeild(
                          hintText: AppLocalizations.of(context)!.location,
                          obsuretext: false,
                          controller: _location,
                          showIcon: true,
                          icons: Icons.location_on,
                          showShadow: false,
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          left: 20,
                          right: 20,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment
                              .start, // Aligns children to the right
                          children: <Widget>[
                            MyTexxtStyle(
                              // text: "Price Range",
                              text: AppLocalizations.of(context)!.priceRange,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/us.png', // replace with your image file path
                                  // adjust as needed
                                ),
                                const SizedBox(
                                    width:
                                        10), // add some space between the image and the text
                                MyTexxtStyle(
                                  // text: 'Precios estan en US dollares',
                                  text: AppLocalizations.of(context)!.precio,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ), // adjust as needed
                              ],
                            ),
                            const MyTexxtStyle(
                              text: 'US.0 - USD 3,000,000.00',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 0,
                          left: 0,
                          right: 0,
                        ),
                        child: MySlider(),
                      ),
                      SizedBox(
                        // width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.all(
                            screenSize.width * 0.05,
                          ), // Adjust the padding as needed
                          child: MyButton(
                            // text: "Search",
                            text: AppLocalizations.of(context)!.search,
                            textColor: Theme.of(context).colorScheme.tertiary,
                            backgroundColor:
                                Theme.of(context).colorScheme.secondary,
                            onTap: () => {
                              //logic for the button
                            },
                            fontSize: 18.0,
                            width: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Center(child: Text('Tab 2 Content')),
                  const Center(child: Text('Tab 3 Content')),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
