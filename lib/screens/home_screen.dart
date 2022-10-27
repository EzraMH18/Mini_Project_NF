import 'package:flutter/material.dart';
import 'package:mini_projects/screens/jemput_sampah.dart';
import 'package:mini_projects/screens/jenis_sampah.dart';
import 'package:mini_projects/screens/profile_screen.dart';
import 'package:mini_projects/screens/riwayat_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("Dashboard"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: GridView.count(
        padding: EdgeInsets.all(24),
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            elevation: 16,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(),
                  ),
                );
              },
              splashColor: Colors.greenAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset('assets/1.png'),
                    ),
                    const Text(
                      'Profile',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            margin: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              top: 5.0,
            ),
          ),
          Card(
            elevation: 16,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FormJemputSampah(),
                  ),
                );
              },
              splashColor: Colors.greenAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset('assets/4.png'),
                    ),
                    const Text(
                      'Jemput Sampah',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            margin: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              top: 5.0,
            ),
          ),
          Card(
            elevation: 16,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => JenisSampahScreen(),
                  ),
                );
              },
              splashColor: Colors.greenAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset('assets/5.png'),
                    ),
                    const Text(
                      'Jenis Sampah',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            margin: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              top: 5.0,
            ),
          ),
          Card(
            elevation: 16,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RiwayatScreen(),
                  ),
                );
              },
              splashColor: Colors.greenAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset('assets/2.png'),
                    ),
                    const Text(
                      'Riwayat',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            margin: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              top: 5.0,
            ),
          ),
        ],
      ),
    );
  }
}
