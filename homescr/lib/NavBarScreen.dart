import 'package:flutter/material.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:homescr/Home.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> _pages = [
    // Define your pages here
    Home(),
    Page('Page 2 Content'),
    Page('Page 3 Content'),
    Page('Page 4 Content'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Techoniq', style:TextStyle(fontWeight: FontWeight.bold, fontSize:20),),
        // centerTitle: true,

        backgroundColor: Colors.black,
        titleTextStyle: TextStyle(color: Colors.white),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:32.0),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: Colors.amber[600],
                )),
          )
        ],
      ),
      body: _pages[_selectedIndex],
      // extendBody: true,
      bottomNavigationBar: DotNavigationBar(
        unselectedItemColor: Colors.white,
        marginR: const EdgeInsets.symmetric(horizontal: 30),
        paddingR: const EdgeInsets.only(bottom: 5, top: 0),
        backgroundColor: Color.fromARGB(221, 69, 67, 67),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        dotIndicatorColor: Colors.red,
        splashColor: Colors.transparent,
        items: [
          /// NavBarScreen
          DotNavigationBarItem(
            icon: Icon(Icons.home),
            selectedColor: Colors.red,
          ),

          /// add
          DotNavigationBarItem(
            icon: Icon(Icons.add),
            selectedColor: Colors.red,
          ),

          /// chat
          DotNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            selectedColor: Colors.red,
          ),

          /// Profile
          DotNavigationBarItem(
            icon: Icon(Icons.person),
            selectedColor: Colors.red,
          ),
        ],
      ),
    );
  }
}

class Page extends StatefulWidget {
  final String content;
  const Page(this.content, {super.key});

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          widget.content,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
