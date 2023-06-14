import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/single_chat_model.dart';

class ChatBubble extends StatelessWidget {
  ChatBubble({Key? key, required this.message}) : super(key: key);
  SingleChat message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment:(message.isSend!)? Alignment.centerRight:Alignment.centerRight,
      child: ConstrainedBox(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 150),
        child: Card(
          color: Colors.white,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 45, bottom: 20),
                child: Text(message.message),
              ),
              Positioned(top: 14, right: 3, child: Row(
                children: [
                  Text(message.sendAt),
                  (message.isSend!)? 
                  Icon(Icons.done_all,size: 13,color:(message.isReaded!)? Colors.blue:Colors.black,):Container(),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
