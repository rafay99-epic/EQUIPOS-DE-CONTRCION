import 'package:flutter/material.dart';
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
                'https://images.unsplash.com/photo-1568605117036-5fe5e7bab0b7?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // replace with your dynamic URL
                fit: BoxFit
                    .cover, // this is to make sure the image covers the entire space
                errorBuilder: (context, error, stackTrace) {
                  // handle image loading errors
                  return Center(child: Text('Error loading image'));
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

            //category

            //Buy Btn
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                width: double.infinity,
                child: MyButton(
                  text: 'Buy Now',
                  textColor: Theme.of(context).colorScheme.background,
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  onTap: () {},
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
