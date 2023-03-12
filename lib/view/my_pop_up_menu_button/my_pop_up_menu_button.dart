import 'package:flutter/material.dart';

class MyPopUpMenuButton extends StatelessWidget {
  List<Map<String, dynamic>> colorListInformation = [
    {'color': Color(0xFFE32929), 'description': 'Hari Libur'},
    {'color': Color(0xFFE3BE29), 'description': 'Telat Datang'},
    {'color': Color(0xFF776A6A), 'description': 'Pulang Cepat'},
    {'color': Color(0xFF7418CB), 'description': 'Absen Di Luar Lokasi'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) =>
                colorListInformation.map((item) {
              return PopupMenuItem(
                height: 22,
                child: Row(
                  children: [
                    Container(
                        height: 20,
                        width: 20,
                        color: (item['color'] == null || item['color'] == '')
                            ? Colors.greenAccent
                            : item['color']),
                    SizedBox(width: 8),
                    Text(item['description'] ?? '-'),
                  ],
                ),
              );
            }).toList(),
            icon: Icon(Icons.info_outline),
          ),
        ],
      ),
      body: Center(
        child: IconButton(
            icon: Icon(
              Icons.info,
              color: Colors.green,
            ),
            onPressed: () {
              showDialog<String>(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Information'),
                    content: Text('This is a sample description.'),
                    actions: <Widget>[
                      ElevatedButton(
                        child: CircularProgressIndicator(),
                        onPressed: () async {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            }),
      ),
    );
  }
}
