import 'package:flutter/material.dart';


class CustomCheckBoxes extends StatefulWidget {
  final String? checkBoxText;
   CustomCheckBoxes({this.checkBoxText=''}) ;

  @override
  _CustomCheckBoxesState createState() => _CustomCheckBoxesState();
}

class _CustomCheckBoxesState extends State<CustomCheckBoxes> {
  bool checkedValue=false;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(widget.checkBoxText!,style: TextStyle(color: Colors.black54,fontSize: 15.0),),
      value: checkedValue,
      onChanged: (newValue) {
        setState(() {
          checkedValue = newValue!;
        });
      },
      controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
    );
  }
}
class CheckBoxEvaluate extends StatefulWidget {


  @override
  _CheckBoxEvaluateState createState() => _CheckBoxEvaluateState();
}

class _CheckBoxEvaluateState extends State<CheckBoxEvaluate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Custom Check Box"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              CustomCheckBoxes(
                checkBoxText: "1",
              ),
              CustomCheckBoxes(
                checkBoxText: "1",
              ),CustomCheckBoxes(
                checkBoxText: "1",
              ),
            ],
          ),
        ),
      ),
    );
  }
}



