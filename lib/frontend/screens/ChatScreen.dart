import 'package:flutter/material.dart';
import 'package:quotaserver/frontend/views/chat.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: const Chat(),
    );
  }
}
