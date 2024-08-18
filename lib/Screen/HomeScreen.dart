import 'package:flutter/material.dart';
import 'package:whatsapps_ui/Screen/chatScreen.dart';
import 'package:whatsapps_ui/widget/popupbuttom/homepagePopUpButtom.dart';

import '../pages/ShowContactPage.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selectedIndex = 0;

  final List<Widget> pages = [
    chatScreen(),
    const Text('Unread Messages', style: TextStyle(color: Colors.black)),
    const Text('Contacts', style: TextStyle(color: Colors.black)),
    const Text('Groups', style: TextStyle(color: Colors.black)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const ShowContactPage();
              },
            ),
          );
        },
        backgroundColor: const Color(0xFF25D366),
        foregroundColor: Colors.white,
        elevation: 0,
        child: const Icon(Icons.add_comment),
      ),
      appBar: AppBar(
        title: const Text(
          'WhatsApp',
          style:
              TextStyle(color: Color(0xFF25D366), fontWeight: FontWeight.w400),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          const HomePagePopUpButtom(),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(
                  4,
                  (index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Chip(
                          side: BorderSide.none,
                          label: Text(
                            ['All', 'Unread', 'Contacts', 'Group'][index],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: selectedIndex == index
                                    ? Colors.black
                                    : Colors.black),
                          ),
                          backgroundColor: selectedIndex == index
                              ? Colors.green.shade100
                              : Colors.grey[300],
                          elevation: selectedIndex == index ? 4 : 0,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
      body: pages[selectedIndex],
    );
  }
}
