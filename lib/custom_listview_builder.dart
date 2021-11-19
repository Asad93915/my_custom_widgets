import 'package:flutter/material.dart';

class CustomListBuilder extends StatefulWidget {
  const CustomListBuilder({Key? key}) : super(key: key);

  @override
  _CustomListBuilderState createState() => _CustomListBuilderState();
}

class _CustomListBuilderState extends State<CustomListBuilder> {
  List<String> _pangaList = ["Asad", "Aqib", "Zeeshan", "Qamar", "Mubashir"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "PAnga with List view Builder",
          style: TextStyle(color: Colors.black, fontSize: 20.0),
        ),
      ),
      body: ListView.builder(
          itemCount: _pangaList.length,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          clipBehavior: Clip.antiAlias,
          itemBuilder: (BuildContext, index) {
            return Container(
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.black54),
                  color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _pangaList[index],
                    style: TextStyle(color: Colors.black, fontSize: 20.0),

                  ),
                ],
              ),
            );
          }),
    );
  }
}
