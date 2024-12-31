import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {

          },
        ),
        title: Row(
          children: [
            ClipOval(
              child: Image.asset(
                'assets/images/person.jpg',
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10),
            Text(
              'Person',
              style: TextStyle(
                fontSize: 23,
                color: Colors.white,
              ),
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.videocam),
              onPressed: () {

              },
            ),
            IconButton(
              icon: Icon(Icons.call),
              onPressed: () {

              },
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {

              },
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  _buildMessageRow('assets/images/person1.jpg', 'this is my first message', true),
                  SizedBox(height: 20),
                  _buildMessageRow('assets/images/person2.jpg', 'this is my second message', false),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [

                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.emoji_emotions),
                                  onPressed: () {

                                  },
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Type a message...',
                                    ),
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(Icons.attach_file),
                                  onPressed: () {

                                  },
                                ),
                                SizedBox(width: 10),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: Icon(Icons.mic, color: Colors.black),
                            onPressed: () {

                            },
                          ),
                        )

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMessageRow(String imageAsset, String message, bool isMe) {
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        if (!isMe)
          CircleAvatar(
            backgroundImage: AssetImage(imageAsset),
            radius: 20,
          ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          margin: EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: isMe ? Colors.blue : Colors.grey,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            message,
            style: TextStyle(
              color: isMe ? Colors.white : Colors.black,
            ),
          ),
        ),
        if (isMe)
          CircleAvatar(
            backgroundImage: AssetImage(imageAsset),
            radius: 20,
          ),
      ],
    );
  }
}
