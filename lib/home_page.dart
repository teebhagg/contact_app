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

            // const Recents(
            //     img: 'assets/img/abc1.jpg',
            //     name: 'Annie Marrie',
            //     number: '+233 67 872 9090'),
            // const Recents(
            //     img: 'assets/img/Podcast.jpg',
            //     name: 'Tony Bonz',
            //     number: '+233 56 766 9800'),
            // const Recents(
            //     img: 'assets/img/podcast1.jpg',
            //     name: ' Mortz',
            //     number: '+233 87 665 9088'),

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

            // Recents(
            //     img: 'assets/img/podcast4.jpeg',
            //     name: 'Adam',
            //     number: '+233 90 999 5052'),
            // Recents(
            //     img: 'assets/img/podcast5.png',
            //     name: 'Ado',
            //     number: '+233 32 443 1213'),

            Text(
              'B',
              style: TextStyle(
                fontWeight: FontWeight.w800,
              ),
              textAlign: TextAlign.end,
            ),

            // Recents(
            //     img: 'assets/img/end.jpg',
            //     name: 'Benedicta',
            //     number: '+233 73 327 1938'),
            // Recents(
            //     img: 'assets/img/p2.jpg',
            //     name: 'Brando',
            //     number: '+233 54 545 8809'),
            // Recents(
            //     img: 'assets/img/no time.jpg',
            //     name: 'Bobby',
            //     number: '+233 79 356 8881'),
            // Library(name, image, number)

            // GestureDetector(
            //   onTap: () {},
            //   child: ListView.builder(
            //       itemCount: contacts.length,
            //       itemBuilder: (context, index) {
            //         return ListTile(
            //           leading: const CircleAvatar(
            //             backgroundImage: AssetImage('imge'),
            //           ),
            //           title: Text(contacts[index]['name']),
            //           subtitle: Text(contacts[index]['number']),
            //           trailing: const Icon(CupertinoIcons.heart),
            //         );
            //       }),
            // )

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
      // Column(
      //         crossAxisAlignment: CrossAxisAlignment.end,
      //         children: [

      //         ],
      //       )
    );
  }
}
