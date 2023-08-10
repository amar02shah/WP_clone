import 'package:flutter/material.dart';

void main() {
  runApp(WhatsAppCloneApp());
}

class WhatsAppCloneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Clone',
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp Clone'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(messages[index].sender[0]),
                  ),
                  title: Text(messages[index].sender),
                  subtitle: Text(messages[index].text),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Type a message',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    // Implement sending message functionality
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Message {
  final String sender;
  final String text;

  Message({required this.sender, required this.text});
}

List<Message> messages = [
  Message(sender: 'Rahul', text: 'Hello'),
  Message(sender: 'Amar', text: 'Hi'),
  Message(sender: 'Anil', text: 'How are you?'),
  Message(sender: 'BingoBoy', text: 'I\'m good. What about you?'),
];
