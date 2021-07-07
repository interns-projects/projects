import 'package:flutter/material.dart';
class chooselocation extends StatefulWidget {
  const chooselocation({Key? key}) : super(key: key);

  @override
  _chooselocationState createState() => _chooselocationState();
}

class _chooselocationState extends State<chooselocation> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title:    Text('Choose location'),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
