import 'package:flutter/material.dart';
import 'package:quotaserver/frontend/widgets/textstyle.dart';

class ReviewCard extends StatelessWidget {
  final String userImage;
  final String userName;
  final String reviewDate;
  final String reviewTime;
  final double starRating;
  final String reviewText;

  const ReviewCard({
    super.key,
    required this.userImage,
    required this.userName,
    required this.reviewDate,
    required this.reviewTime,
    required this.starRating,
    required this.reviewText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      child: Card(
        color: Theme.of(context).colorScheme.background,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(userImage),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyTexxtStyle(
                          text: userName,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        Row(
                          children: [
                            MyTexxtStyle(
                              text: reviewDate,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(153, 153, 153, 1),
                            ),
                            const SizedBox(width: 10),
                            MyTexxtStyle(
                              text: reviewDate,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(153, 153, 153, 1),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.star, color: Colors.amber),
                  Text(starRating.toString()),
                ],
              ),
              const SizedBox(height: 10),
              MyTexxtStyle(
                text: reviewText,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(153, 153, 153, 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
