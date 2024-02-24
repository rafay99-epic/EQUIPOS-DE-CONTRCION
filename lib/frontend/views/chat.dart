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
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final List<Message> messages = [
      Message(
        text: 'Hello, how are you?',
        timestamp: DateTime.now(),
        senderId: '1',
        receiverId: '2',
      ),
      Message(
        text: 'I am fine, thank you. How about you?',
        timestamp: DateTime.now().add(const Duration(minutes: 1)),
        senderId: '2',
        receiverId: '1',
      ),
      Message(
        text: 'I am doing well, thank you.',
        timestamp: DateTime.now().add(const Duration(minutes: 2)),
        senderId: '1',
        receiverId: '2',
      ),
      Message(
        text: 'Good to Know, I need your help with something.',
        timestamp: DateTime.now().add(const Duration(minutes: 2)),
        senderId: '2',
        receiverId: '1',
      ),
      // Add more messages as needed
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
                  bool isCurrentUser =
                      messages[index].senderId == currentUserId;

                  return Row(
                    mainAxisAlignment: isCurrentUser
                        ? MainAxisAlignment.end
                        : MainAxisAlignment.start,
                    children: [
                      if (!isCurrentUser)
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://images.unsplash.com/photo-1599566150163-29194dcaad36?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YXZhdGFyfGVufDB8fDB8fHww'), // Replace with the actual URL of the other user's profile picture
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'John King',
                                  style: TextStyle(color: Colors.white),
                                ), // Replace 'User Name' with the actual user name
                              ],
                            ),
                            // Your message widget goes here
                          ],
                        ),
                      const SizedBox(
                        width: 10,
                      ),
                      //New Version
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 8),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 14,
                                  vertical: 10,
                                ),
                                decoration: BoxDecoration(
                                  color: isCurrentUser
                                      ? Theme.of(context).colorScheme.secondary
                                      : const Color.fromRGBO(33, 39, 39, 1),
                                  borderRadius: BorderRadius.only(
                                    topLeft: const Radius.circular(12),
                                    topRight: const Radius.circular(12),
                                    bottomLeft: isCurrentUser
                                        ? const Radius.circular(0)
                                        : const Radius.circular(12),
                                    bottomRight: isCurrentUser
                                        ? const Radius.circular(12)
                                        : const Radius.circular(0),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    messages[index].text,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  DateFormat('hh:mm a')
                                      .format(messages[index].timestamp),
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Container(
              height: 120.0,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(18, 20, 20, 1),
                borderRadius: BorderRadius.circular(
                  20.0,
                ),
              ),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: _textController,
                      textCapitalization: TextCapitalization.sentences,
                      onChanged: (value) {
                        // Implement your function here
                      },
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(15, 34, 34, 1),
                        hintText: 'Send a message...',
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: const Icon(Icons.photo_camera),
                            iconSize: 25.0,
                            color: Theme.of(context).colorScheme.background,
                            onPressed: () {
                              // Implement your function here
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.mic),
                            iconSize: 25.0,
                            color: Theme.of(context).colorScheme.background,
                            onPressed: () {
                              // Implement your function here
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.send),
                            iconSize: 25.0,
                            color: Theme.of(context).colorScheme.background,
                            onPressed: () {
                              // Implement your function here
                              _textController.clear();
                            },
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(Icons.attach_file),
                        iconSize: 25.0,
                        color: Theme.of(context).colorScheme.background,
                        onPressed: () {
                          // Implement your function here
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Message Model
class Message {
  final String text;
  final DateTime timestamp;
  final String senderId;
  final String receiverId;

  Message({
    required this.text,
    required this.timestamp,
    required this.senderId,
    required this.receiverId,
  });
}
