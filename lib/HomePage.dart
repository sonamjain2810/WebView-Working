import 'package:flutter/material.dart';
import 'package:webview/WebViewApp.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hindi Kahaniya'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              debugPrint("Akabar Birbal");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WebViewApp(2)),
              );
            },
            child: const Text("Akabar Birbal"),
          ),
          ElevatedButton(
            onPressed: () {
              debugPrint("Tenali Raman");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WebViewApp(1)),
              );
            },
            child: const Text("Tenaliraman"),
          ),
          ElevatedButton(
            onPressed: () {
              debugPrint("Panch Tantra");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WebViewApp(3)),
              );
            },
            child: const Text("PanchTantra"),
          ),
        ],
      ),
    );
  }

  
}
