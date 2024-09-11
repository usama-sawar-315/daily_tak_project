import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {

  final TextEditingController _controller = TextEditingController();
  List<Message> messages = [];

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        messages.add(Message(text: _controller.text, isSender: true));
        messages.add(Message(text: 'Reply: ${_controller.text}', isSender: false));
        _controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212832),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.white),
        backgroundColor: const Color(0xFF212832),
        title: Center(child: Text('Messages',style: TextStyle(color: Theme.of(context).dividerColor))),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index) {
                final message = messages[index];
                return Align(
                  alignment: message.isSender ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 5.0),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: message.isSender ? Colors.blueAccent : Colors.grey[300],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      message.text,
                      style: TextStyle(
                        color: message.isSender ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: _controller,
                    style: TextStyle(color: Theme.of(context).dividerColor,),
                    decoration: InputDecoration(
                      hintText: 'Enter your message',
                      hintStyle: TextStyle(color: Theme.of(context).dividerColor,),
                      // filled: true,
                      // fillColor: Theme.of(context).primaryColorLight,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                FloatingActionButton(
                   backgroundColor: Theme.of(context).primaryColorLight,
                  onPressed: _sendMessage,
                  child: Icon(Icons.send,color:  Theme.of(context).primaryColorDark,),
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
  final String text;
  final bool isSender;

  Message({required this.text, required this.isSender});
}