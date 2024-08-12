import 'package:flutter/material.dart';
import 'package:whatsapps_ui/Screen/chatScreen.dart';
import 'package:whatsapps_ui/widget/popupbuttom/homepagePopUpButtom.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xff02590F),
          foregroundColor: Colors.white,
          elevation: 0,
          shape: const CircleBorder(),
          child: const Icon(Icons.message),
        ),
        appBar: AppBar(
          title: const Text(
            'WhatsApp',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
            const HomePagePopUpButtom(),
            const SizedBox(
              width: 10,
            )
          ],
          bottom: const TabBar(
            unselectedLabelColor: Colors.white70,
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelStyle:
                TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt_sharp),
              ),
              Tab(
                text: 'Chat',
              ),
              Tab(
                text: 'Status',
              ),
              Tab(
                text: 'Calls',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            const Text(
              'This is camera',
              style: TextStyle(color: Colors.black),
            ),
            chatScreen(),
            const Text('This is Status section',
                style: TextStyle(color: Colors.black)),
            const Text('This is Calls section',
                style: TextStyle(color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
