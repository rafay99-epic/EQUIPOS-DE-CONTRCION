// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotaserver/frontend/widgets/myButton.dart';
import 'package:quotaserver/frontend/widgets/reviewCard.dart';

class review extends StatefulWidget {
  const review({super.key});

  @override
  State<review> createState() => _reviewState();
}

class _reviewState extends State<review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text(
          'Reviews',
          style: GoogleFonts.poppins(
              color: Theme.of(context).colorScheme.onBackground),
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              ReviewCard(
                userImage:
                    'https://cdn3.vectorstock.com/i/1000x1000/30/97/flat-business-man-user-profile-avatar-icon-vector-4333097.jpg', // replace with your dynamic URL
                userName: 'User Name', // replace with your dynamic user name
                reviewDate:
                    '01/01/2022', // replace with your dynamic review date
                reviewTime: '12:00 PM', // replace with your dynamic review time
                starRating: 4.5, // replace with your dynamic star rating
                reviewText:
                    'This is a review text.', // replace with your dynamic review text
              ),
              ReviewCard(
                userImage:
                    'https://cdn3.vectorstock.com/i/1000x1000/30/97/flat-business-man-user-profile-avatar-icon-vector-4333097.jpg', // replace with your dynamic URL
                userName: 'User Name', // replace with your dynamic user name
                reviewDate:
                    '01/01/2022', // replace with your dynamic review date
                reviewTime: '12:00 PM', // replace with your dynamic review time
                starRating: 4.5, // replace with your dynamic star rating
                reviewText:
                    'This is a review text.', // replace with your dynamic review text
              ),
              ReviewCard(
                userImage:
                    'https://cdn3.vectorstock.com/i/1000x1000/30/97/flat-business-man-user-profile-avatar-icon-vector-4333097.jpg', // replace with your dynamic URL
                userName: 'User Name', // replace with your dynamic user name
                reviewDate:
                    '01/01/2022', // replace with your dynamic review date
                reviewTime: '12:00 PM', // replace with your dynamic review time
                starRating: 4.5, // replace with your dynamic star rating
                reviewText:
                    'This is a review text.', // replace with your dynamic review text
              ),
              ReviewCard(
                userImage:
                    'https://cdn3.vectorstock.com/i/1000x1000/30/97/flat-business-man-user-profile-avatar-icon-vector-4333097.jpg', // replace with your dynamic URL
                userName: 'User Name', // replace with your dynamic user name
                reviewDate:
                    '01/01/2022', // replace with your dynamic review date
                reviewTime: '12:00 PM', // replace with your dynamic review time
                starRating: 4.5, // replace with your dynamic star rating
                reviewText:
                    'This is a review text.', // replace with your dynamic review text
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: MyButton(
          text: "Give Feedback",
          textColor: Colors.white,
          backgroundColor: Theme.of(context).colorScheme.secondary,
          onTap: () {
            showReviewDialog(context);
          },
          fontSize: 19,
          width: double.infinity,
        ),
      ),
    );
  }
}

void showReviewDialog(BuildContext context) {
  final TextEditingController reviewController = TextEditingController();
  int starRating = 0;

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        title: const Text('Give Review'),
        content: StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  children: List.generate(5, (index) {
                    return IconButton(
                      icon: Icon(
                        Icons.star,
                        color: index < starRating ? Colors.amber : Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          starRating = index + 1;
                        });
                      },
                    );
                  }),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: reviewController,
                    maxLines: 5,
                    decoration: const InputDecoration(
                      hintText: 'Feedback',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(10.0),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
        actions: <Widget>[
          MyButton(
            text: "Send Feedback",
            textColor: Colors.white,
            backgroundColor: Colors.amber,
            onTap: () {
              print('Star Rating: $starRating');
              print('Review: ${reviewController.text}');
            },
            fontSize: 12,
            width: double.infinity,
          )
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
      );
    },
  );
}
