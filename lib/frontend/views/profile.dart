// ignore_for_file: no_leading_underscores_for_local_identifiers, unused_local_variable, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:quotaserver/constant/animation/animationFadeLeftToRight.dart';
import 'package:quotaserver/frontend/screens/ChatScreen.dart';
import 'package:quotaserver/frontend/screens/ItemDetailScreen.dart';
import 'package:quotaserver/frontend/widgets/imagebox.dart';
import 'package:quotaserver/frontend/widgets/myButton.dart';
import 'package:quotaserver/frontend/widgets/reportDialog.dart';
import 'package:quotaserver/frontend/widgets/textfeild.dart';
import 'package:quotaserver/frontend/widgets/textstyle.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart'; // Import this

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _nameController = TextEditingController();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _phoneNumberController =
        TextEditingController();

    List<ImageBox> imageBoxes = <ImageBox>[
      ImageBox(
        imageUrl: 'assets/images/image01.png',
        price: ' 54,77,823.73',
        title: 'Lorem Ipsum',
        onTap: () {
          Navigator.of(context).push(transitionToPage(
            const ItemDetailScreen(),
            durationMillis: 500,
          ));
        },
      ),
      ImageBox(
        imageUrl: "assets/images/image02.png",
        price: ' 5,85,000',
        title: "Lorem Ipsum",
        onTap: () {
          Navigator.of(context).push(transitionToPage(
            const ItemDetailScreen(),
            durationMillis: 500,
          ));
        },
      ),
      ImageBox(
        imageUrl: "assets/images/image03.png",
        price: '300',
        title: "Car 03",
        onTap: () {
          Navigator.of(context).push(transitionToPage(
            const ItemDetailScreen(),
            durationMillis: 500,
          ));
        },
      ),
      ImageBox(
        imageUrl: "assets/images/image04.png",
        price: '300',
        title: "Car 03",
        onTap: () {
          Navigator.of(context).push(transitionToPage(
            const ItemDetailScreen(),
            durationMillis: 500,
          ));
        },
      ),
    ];

    // Variables
    var screenSize = MediaQuery.of(context).size;
    var padding = screenSize.width * 0.01;
    String imageUrl =
        "https://images.unsplash.com/photo-1521572267360-ee0c2909d518?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"; // Replace with your image URL
    String name = "Alex Adam";
    String twitterId = "@alexadam";

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.more_vert, color: Colors.white),
              onPressed: () {
                showReportDialog(context);
              }),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: Image.network(imageUrl).image,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: MyTexxtStyle(
                      text: name,
                      fontSize: 24,
                      color: Theme.of(context).colorScheme.background,
                      fontWeight: FontWeight.w500,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.check_circle,
                    color: Colors.blue,
                    size: 14,
                  ),
                ],
              ),
              MyTexxtStyle(
                text: twitterId, // Twitter ID
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      width: double.infinity,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35),
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              width: double.infinity,
                              child: Padding(
                                padding: EdgeInsets.all(
                                  screenSize.width * 0.05,
                                ),
                                child: MyButton(
                                  // text: "Send Message",
                                  text:
                                      AppLocalizations.of(context)!.sendMessage,
                                  textColor:
                                      Theme.of(context).colorScheme.secondary,
                                  backgroundColor:
                                      Theme.of(context).colorScheme.primary,
                                  onTap: () {
                                    Navigator.of(context).push(transitionToPage(
                                      const ChatScreen(),
                                      durationMillis: 500,
                                    ));
                                  },
                                  fontSize: 16,
                                  width: double.infinity,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            MyTextFeild(
                              // hintText: 'Full Name',
                              hintText: AppLocalizations.of(context)!.fullName,
                              obsuretext: false,
                              controller: _nameController,
                              showShadow: false,
                              showIcon: false,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            MyTextFeild(
                              // hintText: 'Email adress',
                              hintText:
                                  AppLocalizations.of(context)!.emailAdress,
                              obsuretext: false,
                              controller: _emailController,
                              showShadow: false,
                              showIcon: false,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            MyTextFeild(
                              // hintText: 'Phone Number',
                              hintText:
                                  AppLocalizations.of(context)!.phoneNumber,
                              obsuretext: false,
                              controller: _phoneNumberController,
                              showShadow: false,
                              onlyNumber: true,
                              showIcon: false,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25, top: 25),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  MyTexxtStyle(
                                    // text: 'Products ',
                                    text:
                                        AppLocalizations.of(context)!.products,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Center(
                                  child: GridView.builder(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: imageBoxes.length,
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 20,
                                      mainAxisSpacing: 20,
                                    ),
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return imageBoxes[index];
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
