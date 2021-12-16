import 'package:contactz/library.dart';
import 'package:contactz/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:contactz/contactss.dart';

class Conts extends StatefulWidget {
  final Library library;
  Conts({Key? key, required this.library}) : super(key: key);

  @override
  State<Conts> createState() => _ContsState();
}

class _ContsState extends State<Conts> {
  @override
  Widget build(BuildContext context) {
    final Library library = widget.library;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back_ios_new),
        title: Text('Contacts'),
        centerTitle: true,
        elevation: 0,
        actions: [
          Icon(Icons.more_vert),
        ],
      ),
      body: ListView(
        // padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
        scrollDirection: Axis.vertical,
        children: [
          Container(
            color: Colors.white,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 90,
                  backgroundImage: AssetImage(library.name),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(library.image,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 28.0),
                  child: Text(library.email),
                )
              ],
            ),
          ),
          Container(
            color: Colors.grey.shade500,
            width: MediaQuery.of(context).size.width,
            height: 2,
          ),
          ListTile(
            title: Text('Mobile',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                )),
            subtitle: Text(library.number),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.message_sharp,
                      size: 17,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.call,
                      size: 17,
                    ))
              ],
            ),
          ),
          ListTile(
            title: Text('Email',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                )),
            subtitle: Text(library.location),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.mail,
                  size: 17,
                )),
          ),
          Container(
            color: white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Accounts Linked',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
            ),
          ),
          Container(
            color: Colors.grey.shade500,
            width: MediaQuery.of(context).size.width,
            height: 2,
          ),
          ListTile(
            title: Text('Telegram',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                )),
            // subtitle: Text('khalijonez777@gmial.com'),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.mail,
                  size: 17,
                )),
          ),
          ListTile(
            title: Text('WhatsApp',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                )),
            // subtitle: Text('khalijonez777@gmial.com'),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.mail,
                  size: 17,
                )),
          ),
          Container(
            color: white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Accounts Linked',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
            ),
          ),
          Container(
            color: Colors.grey.shade500,
            width: MediaQuery.of(context).size.width,
            height: 2,
          ),
          ListTile(
            title: Text('Share Contact',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                )),
          ),
          ListTile(
            title: Text('QR Code',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                )),
          ),
        ],
      ),
    );
  }
}
