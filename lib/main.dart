import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Yoututor'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  int selectedTab = 0;
  void onClick(int index) {
    setState(() {
      selectedTab = index;
    });
  }

  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        endDrawer: Drawer(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedTab,
          onTap: onClick,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(255, 103, 184, 250),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_alert_outlined),
              label: 'Reminder',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Account',
            ),
          ],
          unselectedItemColor: Colors.white,
          unselectedFontSize: 12,
          selectedFontSize: 12,
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w300),
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          unselectedIconTheme: IconThemeData(size: 22),
          selectedIconTheme: IconThemeData(
            size: 22,
          ),
          selectedItemColor: Colors.yellow,
        ),

        appBar: AppBar(
          bottom: TabBar(indicatorColor: Colors.white, tabs: [
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Icon(Icons.video_collection_outlined),
                  ),
                  Text("Videos")
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Icon(Icons.picture_as_pdf_outlined),
                  ),
                  Text("PDF")
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Icon(Icons.youtube_searched_for_outlined),
                  ),
                  Text("YouTube")
                ],
              ),
            ),
          ]),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(Icons.menu),
            )
          ],
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
          backgroundColor: Color.fromARGB(255, 103, 184, 250),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TabBarView(children: [
            Container(
              color: Color.fromARGB(255, 255, 255, 255),
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  Card(
                    color: Color.fromARGB(255, 112, 197, 249),
                  ),
                  Card(
                    color: Color.fromARGB(255, 3, 64, 115),
                  ),
                  Card(
                    color: Color.fromARGB(255, 3, 64, 115),
                  ),
                  Card(
                    color: Color.fromARGB(255, 112, 197, 249),
                  ),
                  Card(
                    color: Color.fromARGB(255, 112, 197, 249),
                  ),
                  Card(
                    color: Color.fromARGB(255, 3, 64, 115),
                  ),
                  Card(
                    color: Color.fromARGB(255, 3, 64, 115),
                  ),
                  Card(
                    color: Color.fromARGB(255, 112, 197, 249),
                  ),
                ],
              ),
            ),
            Container(
              color: Color.fromARGB(255, 255, 255, 255),
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  Card(
                    color: Color.fromARGB(255, 112, 249, 153),
                  ),
                  Card(
                    color: Color.fromARGB(255, 1, 78, 31),
                  ),
                  Card(
                    color: Color.fromARGB(255, 1, 78, 31),
                  ),
                  Card(
                    color: Color.fromARGB(255, 112, 249, 153),
                  ),
                  Card(
                    color: Color.fromARGB(255, 112, 249, 153),
                  ),
                  Card(
                    color: Color.fromARGB(255, 1, 78, 31),
                  ),
                  Card(
                    color: Color.fromARGB(255, 1, 78, 31),
                  ),
                  Card(
                    color: Color.fromARGB(255, 112, 249, 153),
                  ),
                ],
              ),
            ),
            Container(
              color: Color.fromARGB(255, 255, 255, 255),
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  Card(
                    color: Color.fromARGB(255, 212, 249, 112),
                  ),
                  Card(
                    color: Color.fromARGB(255, 218, 195, 23),
                  ),
                  Card(
                    color: Color.fromARGB(255, 218, 195, 23),
                  ),
                  Card(
                    color: Color.fromARGB(255, 212, 249, 112),
                  ),
                  Card(
                    color: Color.fromARGB(255, 212, 249, 112),
                  ),
                  Card(
                    color: Color.fromARGB(255, 218, 195, 23),
                  ),
                  Card(
                    color: Color.fromARGB(255, 218, 195, 23),
                  ),
                  Card(
                    color: Color.fromARGB(255, 212, 249, 112),
                  ),
                ],
              ),
            ),
          ]),
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
