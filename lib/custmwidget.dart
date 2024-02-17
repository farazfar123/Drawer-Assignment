import 'package:flutter/material.dart';

customWidget(name, msg, unreadmsg, img) {
  return ListTile(
    tileColor: unreadmsg > 0 ? Colors.lightBlueAccent : Colors.transparent,
    leading: CircleAvatar(
      backgroundImage: AssetImage('Assets/images/$img.png'),
    ),
    title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
    subtitle: Text(msg,  style: const TextStyle(fontWeight: FontWeight.normal)),
    trailing: Container(
      padding: const EdgeInsets.all(10),
      decoration:
          const BoxDecoration(color: Colors.lightBlue, shape: BoxShape.circle),
      child: Text('$unreadmsg'),
    ),
  );
}
