import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  TextEditingController _messageController = TextEditingController();
  List<String> messages = []; // Stores chat messages

  void _sendMessage() {
    String message = _messageController.text.trim();
    if (message.isNotEmpty) {
      setState(() {
        messages.add(message);
      });
      _messageController.clear(); // Clear input after sending
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          // Chat messages list
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(10),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(messages[index]),
                  ),
                );
              },
            ),
          ),

          // Input field + Send button
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(
                      hintText: "Type a message...",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send, color: Colors.blue),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
