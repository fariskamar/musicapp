// import 'package:flutter/material.dart';

// class Playlist extends StatelessWidget {
//   const Playlist({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [Icon(Icons.notifications), Icon(Icons.person)],
//         title: Text("playlist"),
//         backgroundColor: Colors.grey,
//       ),
//       body: const Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Image(image: AssetImage("assets/images/spotifycov.jpg")),
//             Text("888 days"),
//             Text("Album by Faris"),
//             Row(
//               children: [
//                 Icon(Icons.favorite),
//                 Icon(Icons.download),
//                 Icon(Icons.follow_the_signs_outlined),
//                 SizedBox(
//                   width: 30,
//                   child: Icon(Icons.play_arrow_rounded),
//                 )
//               ],
//             ),
//             ListTile(
//               title: Text("Feeling Good"),
//               subtitle: Text("Faris"),
//               trailing: Icon(Icons.more_vert),
//             ),
//             ListTile(
//               title: Text("Forever"),
//               subtitle: Text("Faris"),
//               trailing: Icon(Icons.more_vert),
//             ),
//             ListTile(
//               title: Text("Valentine"),
//               subtitle: Text("Faris"),
//               trailing: Icon(Icons.more_vert),
//             ),
//             ListTile(
//               title: Text("Summer Times"),
//               subtitle: Text("Faris"),
//               trailing: Icon(Icons.more_vert),
//             ),
//             ListTile(
//               title: Text("Better Now"),
//               subtitle: Text("Faris"),
//               trailing: Icon(Icons.more_vert),
//             ),
//             ListTile(
//               title: Text("Velocity"),
//               subtitle: Text("Faris"),
//               trailing: Icon(Icons.more_vert),
//             ),
//             ListTile(
//               title: Text("Sorrow"),
//               subtitle: Text("Faris"),
//               trailing: Icon(Icons.more_vert),
//             ),
//             ListTile(
//               title: Text("Valentine"),
//               subtitle: Text("Faris"),
//               trailing: Icon(Icons.more_vert),
//             ),
//             ListTile(
//               title: Text("Valentine"),
//               subtitle: Text("Faris"),
//               trailing: Icon(Icons.more_vert),
//             ),
//             ListTile(
//               title: Text("Bad Bunny"),
//               subtitle: Text("Faris"),
//               trailing: Icon(Icons.more_vert),
//             ),
//             ListTile(
//               title: Text("Valentine"),
//               subtitle: Text("Faris"),
//               trailing: Icon(Icons.more_vert),
//             ),
//             ListTile(
//               title: Text("Valentine"),
//               subtitle: Text("Faris"),
//               trailing: Icon(Icons.more_vert),
//             ),
//             ListTile(
//               title: Text("Valentine"),
//               subtitle: Text("Faris"),
//               trailing: Icon(Icons.more_vert),
//             ),
//             ListTile(
//               title: Text("Valentine"),
//               subtitle: Text("Faris"),
//               trailing: Icon(Icons.more_vert),
//             ),
//             ListTile(
//               title: Text("Valentine"),
//               subtitle: Text("Faris"),
//               trailing: Icon(Icons.more_vert),
//             ),
//             ListTile(
//               title: Text("Valentine"),
//               subtitle: Text("Faris"),
//               trailing: Icon(Icons.more_vert),
//             ),
//             ListTile(
//               title: Text("Valentine"),
//               subtitle: Text("Faris"),
//               trailing: Icon(Icons.more_vert),
//             ),
//             ListTile(
//               title: Text("Valentine"),
//               subtitle: Text("Faris"),
//               trailing: Icon(Icons.more_vert),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }





import 'package:flutter/material.dart';

class Playlist extends StatefulWidget {
  const Playlist({super.key});

  @override
  _PlaylistState createState() => _PlaylistState();
}

class _PlaylistState extends State<Playlist> {
  int _selectedIndex = 0; // Index to track the selected tab

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.notifications), Icon(Icons.person)],
        title: Text("Playlist"),
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView( // Wrap the body with SingleChildScrollView
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: AssetImage("assets/images/spotifycov.jpg")),
              Text("888 days"),
              Text("Album by Faris"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.favorite),
                  Icon(Icons.download),
                  Icon(Icons.follow_the_signs_outlined),
                  SizedBox(
                    width: 30,
                    child: Icon(Icons.play_arrow_rounded),
                  ),
                ],
              ),
              ListTile(
                title: Text("Feeling Good"),
                subtitle: Text("Faris"),
                trailing: Icon(Icons.more_vert),
              ),
              ListTile(
                title: Text("Forever"),
                subtitle: Text("Faris"),
                trailing: Icon(Icons.more_vert),
              ),
              ListTile(
                title: Text("Valentine"),
                subtitle: Text("Faris"),
                trailing: Icon(Icons.more_vert),
              ),
              ListTile(
                title: Text("Summer Times"),
                subtitle: Text("Faris"),
                trailing: Icon(Icons.more_vert),
              ),
              ListTile(
                title: Text("Better Now"),
                subtitle: Text("Faris"),
                trailing: Icon(Icons.more_vert),
              ),
              ListTile(
                title: Text("Velocity"),
                subtitle: Text("Faris"),
                trailing: Icon(Icons.more_vert),
              ),
              ListTile(
                title: Text("Sorrow"),
                subtitle: Text("Faris"),
                trailing: Icon(Icons.more_vert),
              ),
              ListTile(
                title: Text("Bad Bunny"),
                subtitle: Text("Faris"),
                trailing: Icon(Icons.more_vert),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: 'Library',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
