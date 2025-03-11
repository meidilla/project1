import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ProfilePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE4F2FD),
      appBar: AppBar(
        title: Text(
        "Profil",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold, // Pindahkan ke dalam TextStyle
         ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage("profile.jpg"),
          ),
          SizedBox(height: 10),
          Text(
            "Meidilla Azmi",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
            textAlign: TextAlign.center,
          ),
          Text(
            "meidilla@student.undiksha.ac.id",
            style: TextStyle(fontSize: 16, color: Colors.blue),
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              crossAxisCount: 2,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              children: [
                _buildMenuButton(Icons.location_on, "Singaraja", Color(0xFFE4F2FD), Colors.yellow[900]!),
                _buildMenuButton(Icons.store, "Karangasem", Color(0xFFE4F2FD), Colors.yellow[900]!),
                _buildMenuButton(Icons.music_note, "All Genre", Color(0xFFE4F2FD), Colors.yellow[900]!),
                _buildMenuButton(Icons.business, "Undiksha", Color(0xFFE4F2FD), Colors.yellow[900]!),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuButton(IconData icon, String text, Color boxColor, Color iconColor) {
    return Container(
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.blue[900]!, width: 2),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.3),
            blurRadius: 4,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: Icon(icon, size: 70, color: iconColor), // Ukuran ikon diperbesar
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              color: Colors.blue[900],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: Text(
              text,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.yellow),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
