import 'package:contactz/contactss.dart';
import 'package:contactz/library.dart';
import 'package:contactz/more.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallLogs extends StatelessWidget {
  const CallLogs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(left: 9.0),
          child: Text(
            'My Contacts',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: CircleAvatar(
              backgroundColor: Colors.red,
              backgroundImage: AssetImage('assets/img/pone.jpg'),
              radius: 20,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          scrollDirection: Axis.vertical,
          children: [
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search by name or number',
                  prefixIcon: Icon(
                    Icons.search,
                    size: 20,
                  ),
                  // border: OutlineInputBorder(
                  //     borderRadius: BorderRadius.all(Radius.circular(15)),
                  //     borderSide:
                  //         BorderSide(width: 5, style: BorderStyle.solid),
                  //     gapPadding: 12.0),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Recents',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: List.generate(3, (index) {
                  return Recents(
                      library: librarylist[index],
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Conts(
                                      library: librarylist[index],
                                    )));
                      });
                }),
              ),
            ),
            const Text('Contacts',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
            Text(
              'A',
              style: TextStyle(
                fontWeight: FontWeight.w800,
              ),
              textAlign: TextAlign.end,
            ),
            SingleChildScrollView(
              child: Column(
                children: List.generate(3, (index) {
                  return Recents(
                      library: librarylist[index],
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Conts(
                                      library: librarylist[index],
                                    )));
                      });
                }),
              ),
            ),
            Text(
              'B',
              style: TextStyle(
                fontWeight: FontWeight.w800,
              ),
              textAlign: TextAlign.end,
            ),
            SingleChildScrollView(
              child: Column(
                children: List.generate(4, (index) {
                  return Recents(
                      library: librarylist[index],
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Conts(
                                      library: librarylist[index],
                                    )));
                      });
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
