import 'package:flutter/material.dart';

class CustomRadioButton extends StatefulWidget {
  final String? radioText;
  final String? value;
   String? selectedRadio;
    Function(String?) onTap;
  CustomRadioButton({
    this.radioText = '',
    this.value,
    required this.onTap,
    this.selectedRadio,
  });

  @override
  _CustomRadioButtonState createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {


  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Radio<String?>(
                  value: widget.value,
                  groupValue: widget.selectedRadio,
                  onChanged:widget.onTap,
                  ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Text(
                  widget.radioText!,
                  style: TextStyle(fontSize: 15.0, color: Colors.black54),
                ),
              )),
            ],
          ),
        ]);
  }
}

class RadioCheckOutScreen extends StatefulWidget {
  const RadioCheckOutScreen({Key? key}) : super(key: key);

  @override
  _RadioCheckOutScreenState createState() => _RadioCheckOutScreenState();
}

class _RadioCheckOutScreenState extends State<RadioCheckOutScreen> {
  String selectedRadio = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My Custom Radio Buttons"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomRadioButton(
            radioText: "Asad",
            value: "1",
            selectedRadio: selectedRadio,
            onTap: (val){
              selectedRadio=val!;
              setState(() {

              });
            },

          ),
          CustomRadioButton(
            radioText: "Ali",
            value: "2",
            selectedRadio: selectedRadio,
            onTap: (val){
              selectedRadio=val!;
              setState(() {

              });
            },

          ),
        ],
      ),
    );
  }
}

////////InListvIEW bUILDER

/////vALUE IS
//value: index.toString(),
