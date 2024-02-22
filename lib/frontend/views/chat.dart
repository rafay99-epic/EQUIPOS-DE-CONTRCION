// ignore_for_file: library_private_types_in_public_api, unused_local_variable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final String currentUserId = '1';

  @override
  Widget build(BuildContext context) {
    final List<Message> messages = [
      Message(
        text: 'Hello',
        timestamp: DateTime.now(),
        senderId: '1',
        receiverId: '2',
      ),
      Message(
        text: 'hi How are you doing?',
        timestamp: DateTime.now(),
        senderId: '2',
        receiverId: '1',
      ),
      Message(
        text: 'Thanks for asking, I am doing great. How about you?',
        timestamp: DateTime.now(),
        senderId: '1',
        receiverId: '2',
      ),
      Message(
        text: 'Good to Know',
        timestamp: DateTime.now(),
        senderId: '2',
        receiverId: '1',
      ),
      Message(
        text:
            'I need to ask something about the project we are working on. Can we have a call?',
        timestamp: DateTime.now(),
        senderId: '2',
        receiverId: '1',
      ),
    ];
    final paddingSize = MediaQuery.of(context).size.width * 0.05;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(
              FontAwesomeIcons.phone,
              color: Colors.white,
            ),
            onPressed: () {
              //local call support
            },
          ),
          IconButton(
            icon: const Icon(
              FontAwesomeIcons.video,
              color: Colors.white,
            ),
            onPressed: () {
              // Add your video call functionality here
            },
          ),
        ],
        toolbarHeight: 100, //addind height to appbar
        backgroundColor: Theme.of(context).colorScheme.primary,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Row(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1521572267360-ee0c2909d518?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
            ),
            const SizedBox(
                width: 10), // Add some spacing between the image and text
            Text(
              "Alex Adam", // Replace "User Name" with the actual user name from Firebase
              style: GoogleFonts.poppins(
                color: Theme.of(context).colorScheme.background,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(paddingSize),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  bool isSender = messages[index].senderId == '1';
                  bool isReceiver = messages[index].receiverId == '2';

                  return Row(
                    mainAxisAlignment: isSender
                        ? MainAxisAlignment.end
                        : MainAxisAlignment.start,
                    children: [
                      if (isSender)
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1599566150163-29194dcaad36?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YXZhdGFyfGVufDB8fDB8fHww'), // Replace with the actual URL of the receiver's profile picture
                        ),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.only(top: 8),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            color: isSender
                                ? Theme.of(context).colorScheme.secondary
                                : const Color.fromRGBO(33, 39, 39, 1),
                            borderRadius: BorderRadius.only(
                              topLeft: const Radius.circular(12),
                              topRight: const Radius.circular(12),
                              bottomLeft: isSender
                                  ? const Radius.circular(12)
                                  : const Radius.circular(0),
                              bottomRight: isSender
                                  ? const Radius.circular(0)
                                  : const Radius.circular(12),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  messages[index].text,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  DateFormat('hh:mm a')
                                      .format(messages[index].timestamp),
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),

              //  ListView.builder(
              //   itemCount: messages.length,
              //   itemBuilder: (context, index) {
              //     bool isSender = messages[index].senderId == '1';
              //     bool isReceiver = messages[index].receiverId == '2';

              //     return Align(
              //       alignment:
              //           isSender ? Alignment.centerRight : Alignment.centerLeft,
              //       child: Container(
              //         margin: const EdgeInsets.only(
              //             top: 8, bottom: 8, left: 8, right: 8),
              //         padding: const EdgeInsets.symmetric(
              //             horizontal: 14, vertical: 10),
              //         decoration: BoxDecoration(
              //           color: isSender
              //               ? Colors.amber
              //               : (isReceiver
              //                   ? Color.fromRGBO(33, 39, 39, 1)
              //                   : Colors.grey),
              //           borderRadius: BorderRadius.only(
              //             topLeft: Radius.circular(12),
              //             topRight: Radius.circular(12),
              //             bottomLeft: isSender
              //                 ? Radius.circular(12)
              //                 : Radius.circular(0),
              //             bottomRight: isSender
              //                 ? Radius.circular(0)
              //                 : Radius.circular(12),
              //           ),
              //         ),
              //         child: Padding(
              //           padding: const EdgeInsets.all(10.0),
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: <Widget>[
              //               Text(
              //                 messages[index].text,
              //                 style: const TextStyle(
              //                   color: Colors.white,
              //                   fontWeight: FontWeight.bold,
              //                 ),
              //               ),
              //               Text(
              //                 DateFormat('hh:mm a')
              //                     .format(messages[index].timestamp),
              //                 style: const TextStyle(
              //                   color: Colors.white,
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //     );
              //   },
              // ),
            ),
          ],
        ),
      ),
    );
  }
}

class Message {
  final String text;
  final DateTime timestamp;
  final String senderId;
  final String receiverId;

  Message(
      {required this.text,
      required this.timestamp,
      required this.senderId,
      required this.receiverId});
}
