// import 'package:flutter/material.dart';

// class NotificationCards extends StatefulWidget {
//   final String imageUrl;
//   final String notificationContent;
//   final Color cardColor;

//   const NotificationCards({
//     Key? key,
//     required this.imageUrl,
//     required this.notificationContent,
//     this.cardColor = Colors.white,
//   }) : super(key: key);

//   @override
//   State<NotificationCards> createState() => _NotificationCardsState();
// }

// class _NotificationCardsState extends State<NotificationCards> {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: widget.cardColor,
//       shadowColor: Colors.black,
//       elevation: 8.0,
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: <Widget>[
//             CircleAvatar(
//               backgroundImage: NetworkImage(widget.imageUrl),
//             ),
//             const SizedBox(
//               width: 10,
//             ), // Add some space between the image and the text
//             Expanded(
//               child: Text(widget.notificationContent),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class NotificationCards extends StatefulWidget {
  final String imageUrl;
  final String notificationContent;
  final Color cardColor;

  const NotificationCards({
    Key? key,
    required this.imageUrl,
    required this.notificationContent,
    this.cardColor = Colors.white,
  }) : super(key: key);

  @override
  State<NotificationCards> createState() => _NotificationCardsState();
}

class _NotificationCardsState extends State<NotificationCards> {
  late ImageProvider _imageProvider;

  @override
  void initState() {
    super.initState();
    _imageProvider = NetworkImage(widget.imageUrl);
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Card(
      color: widget.cardColor,
      shadowColor: Colors.black,
      elevation: 8.0,
      child: Padding(
        padding: EdgeInsets.all(screenSize.width * 0.02), // 2% of screen width
        child: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: _imageProvider,
              onBackgroundImageError: (exception, stackTrace) {
                // Handle image error
                print('Error loading image: $exception');
                setState(() {
                  _imageProvider = const NetworkImage(
                      'https://images.unsplash.com/photo-1628155930542-3c7a64e2c833?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'); // Replace with your error image URL
                });
              },
            ),
            SizedBox(
              width: screenSize.width * 0.02, // 2% of screen width
            ), // Add some space between the image and the text
            Expanded(
              child: Text(widget.notificationContent),
            ),
          ],
        ),
      ),
    );
  }
}
