import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quotaserver/constant/animation/animationFadeLeftToRight.dart';
import 'package:quotaserver/frontend/screens/ReviewScreen.dart';
import 'package:quotaserver/frontend/widgets/appbar.dart';
import 'package:quotaserver/frontend/widgets/myButton.dart';
import 'package:quotaserver/frontend/widgets/textstyle.dart';

class ItemDetail extends StatefulWidget {
  const ItemDetail({super.key});

  @override
  State<ItemDetail> createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size; // get the screen size

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: MyAppBar(
        showActionIcon: true,
        actionIcon: Icons.share,
        textAlign: TextAlign.left,
        onActionIconPressed: () {
          Navigator.of(context).push(transitionToPage(
            const ReviewScreen(),
            durationMillis: 500,
          ));
        },
      ),
      body: SingleChildScrollView(
        // use SingleChildScrollView to avoid overflow on small devices
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(20.0 *
                  screenSize.width /
                  1080), // adjust the padding based on the screen size
              //Image Box or Image Detail
              child: Image.network(
                'https://s3-alpha-sig.figma.com/img/49c9/476d/426313e568f766678d12b2cfd6212fcd?Expires=1709510400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=HtnjNzfAREaeeYE58f~kCdtO6rfzdHJp5pgfazV7ZhzlrSoq7zDIWWPeSjNNKi1Rutti1I7hIetOzCe0JYhMVM8cJYZI1cps8jY2EXUenW30u5v976gWD65hAhgAcsKroAD-5mJSPLCOqwNRG6yHOXfZ5DKJ7nsonFESbXWtSL8ntLwW0sG6bJjJ5S1a6I8mpODv1yEYrD8cM~KlY1M1cKjBfmUcvNYfMCk2J7oFfhC66830cOkLvc7NmOdwLPh~K3ChevPBoqpv6ymfMKqqbuSMFrRwh-5kXYs5Rmj1IHNCHV93ufh4Xk9XAy6aIeIkcgqKyRLKfxiKLiWpA7j7nw__',
                fit: BoxFit
                    .cover, // this is to make sure the image covers the entire space
                errorBuilder: (context, error, stackTrace) {
                  // handle image loading errors
                  return const Center(child: Text('Error loading image'));
                },
              ),
            ),
            //People View Count
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: MyTexxtStyle(
                  text: "People View Count/ within last hour 21",
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ),
            //Title of the Image
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: MyTexxtStyle(
                        text: 'Undercarriage',
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  MyTexxtStyle(
                    text: '4.5/5', // replace with your dynamic rating
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.star,
                    size: 30,
                    color: Colors.amber,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 0,
            ),
            //Rupee or Cost of the image
            const Padding(
              padding: EdgeInsets.only(
                left: 20.0,
                top: 0.0,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: MyTexxtStyle(
                  text: "Rs: 1800000",
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            //description that will show of the Product
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MyTexxtStyle(
                text:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas diam nam eu nulla a. Vestibulum aliquet facilisi interdum nibh blandit Read more...",
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.grey.shade700,
              ),
            ),
            //Ower Profile Picture
            const Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  CircleAvatar(
                    radius: 15, // adjust as needed
                    backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1521572267360-ee0c2909d518?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", // Replace with your image URL
                    ), // replace with your profile picture URL
                  ),
                  SizedBox(width: 10), // adjust for spacing as needed
                  Text(
                    'Alex Adam', // replace with your profile name
                    style: TextStyle(fontSize: 20), // adjust as needed
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20), // adjust as needed

            //category
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/svg/dealerhandshake.svg', // replace with your SVG file path
                      height: 30, // adjust as needed
                      width: 30, // adjust as needed
                    ),
                    const SizedBox(width: 8), // adjust for spacing as needed
                    const MyTexxtStyle(
                      text: 'Contact Dealer',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/svg/car_verify.svg', // replace with your SVG file path
                      height: 30, // adjust as needed
                      width: 30, // adjust as needed
                    ),
                    const SizedBox(width: 8), // adjust for spacing as needed
                    const MyTexxtStyle(
                      text: 'Car Detail',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/svg/location.svg', // replace with your SVG file path
                      height: 30, // adjust as needed
                      width: 30, // adjust as needed
                    ),
                    const SizedBox(width: 8), // adjust for spacing as needed
                    const MyTexxtStyle(
                      text: 'Dehli, India',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/svg/loan.svg', // replace with your SVG file path
                      height: 30, // adjust as needed
                      width: 30, // adjust as needed
                    ),
                    const SizedBox(width: 8), // adjust for spacing as needed
                    const MyTexxtStyle(
                      text: 'EMI/Loan',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ],
            ),

            //Buy Btn
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                width: double.infinity,
                child: MyButton(
                  text: 'Buy Now',
                  textColor: Theme.of(context).colorScheme.background,
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  onTap: () {
                    //logic for buy button
                  },
                  fontSize: 18,
                  width: 0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
