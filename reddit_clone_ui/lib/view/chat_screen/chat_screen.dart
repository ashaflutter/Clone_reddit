import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 180,
          height: 180,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage("assets/images/chatroom.jpg"),
                fit: BoxFit.cover,
              )
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          "Welcome to chat!",
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 60,right: 60,bottom: 4),
          child: Text(
            "Chat With other Redditors about your favourite topics",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight:FontWeight.normal, fontSize:15
            ),
          ),

        ),
        ElevatedButton(
          onPressed: () {},
          style:ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              elevation: 0.0,
              primary: Theme.of(context).colorScheme.secondary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              )
          ),
          child: const Text(
            "Explore channels",
            style: TextStyle(color: Colors.white ),
          ),

        )
      ],
    );
  }
}
