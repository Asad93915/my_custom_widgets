import 'package:flutter/material.dart';

class NeumorphiceDesignWithoutPackage extends StatefulWidget {
  const NeumorphiceDesignWithoutPackage({Key? key}) : super(key: key);

  @override
  _NeumorphiceDesignWithoutPackageState createState() =>
      _NeumorphiceDesignWithoutPackageState();
}

class _NeumorphiceDesignWithoutPackageState
    extends State<NeumorphiceDesignWithoutPackage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.green,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 3,
                            color: Colors.grey.shade500,
                            offset: Offset(4, 4)),
                        BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 3,
                            color: Colors.white,
                            offset: Offset(-2, -3)),
                      ]),
                ),
              )
            ]),
          ),
        ));
  }
}
