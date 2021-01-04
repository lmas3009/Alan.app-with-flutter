import 'package:alan_voice/alan_voice.dart';
import 'package:flutter/material.dart';
import 'package:try_medium/Aboutus.dart';
import 'package:try_medium/Cart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setUpalan();
  }

  setUpalan() {
    AlanVoice.addButton("***KEY***/stage",
        buttonAlign: AlanVoice.BUTTON_ALIGN_RIGHT);
    AlanVoice.callbacks.add((command) => _handleCmd(command.data));
  }

  _handleCmd(Map<String, dynamic> res) {
    switch (res["command"]) {
      case "Aboutus":
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => AboutUs()));
        print('Opening');
        break;
      case "Main":
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyApp()));
        print('Opening');
        break;
      case "Cart":
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Cart()));
        print('Opening');
        break;
      case "Previous":
        Navigator.pop(context);
        print('Opening');
        break;
      default:
        print("Command not found");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alan.app Chat Application'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: Center(
          child: Text(
            "Main Page",
            style: TextStyle(
              fontSize: 50,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
