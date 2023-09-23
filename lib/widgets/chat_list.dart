import 'package:flutter/material.dart';
import 'package:whatapp/info.dart';
import 'package:whatapp/widgets/sender_message_card.dart';

import 'mymessage_cart.dart';
class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
        itemBuilder: (context,index){
        if(messages[index]['isMe']==true){
         return MyMessageCart(message: messages[index]['text'].toString(),
           date:messages[index]['time'].toString());
        }
        return SenderMessageCart(message: messages[index]['text'].toString(),
            date:messages[index]['time'].toString());
        },
    );
  }
}
