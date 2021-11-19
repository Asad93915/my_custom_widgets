import 'package:flutter/material.dart';

class MyCustomButton extends StatefulWidget {
  final String? text;
  final Function? onPressed;
  final double? height;
  final double? width;
  final Color? bgColor;
  final Color? textColor;

  MyCustomButton({
    this.text = '',
    this.onPressed,
    this.height = 45.0,
    this.width = 100.0,
    this.bgColor = Colors.blue,
    this.textColor = Colors.black54,
  });

  @override
  _MyCustomButtonState createState() => _MyCustomButtonState();
}

class _MyCustomButtonState extends State<MyCustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      height: widget.height,
      width: widget.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: widget.bgColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            )),
        onPressed: () {
          setState(() {});
          widget.onPressed!();
        },
        child: Text(
          widget.text!,
          style: TextStyle(color: widget.textColor, fontSize: 17.0),
        ),
      ),
    );
  }
}
