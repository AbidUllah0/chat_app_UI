import 'package:flutter/material.dart';

class SendMessage extends StatefulWidget {
  @override
  State<SendMessage> createState() => _SendMessageState();
}

class _SendMessageState extends State<SendMessage> {
  final TextEditingController messageController = TextEditingController();
  final List<String> messages = List.generate(20, (index) => 'Message $index');
  final ScrollController scrollController = ScrollController();

  void scrollToLatestMessage() {
    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (WidgetsBinding.instance.window.viewInsets.bottom > 0.0) {
      scrollToLatestMessage();
    } else {}
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Chat App'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                controller: scrollController,
                children: messages
                    .map((message) => ListTile(title: Text(message)))
                    .toList(),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      controller: messageController,
                      decoration: InputDecoration(
                        hintText: 'Type a message...',
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // Handle sending the message here

                      if (messageController.text.isNotEmpty) {
                        messages.add(messageController.text);
                        messageController.clear();
                        scrollToLatestMessage(); // Scroll to the latest message
                      }
                    },
                    icon: Icon(Icons.send),
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
