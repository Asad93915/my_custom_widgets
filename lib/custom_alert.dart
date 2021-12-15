
import 'package:flutter/material.dart';

class CustomErrorDialogue {
  static void showDialogue({
    required BuildContext context,
    String message = 'Please wait',
    String details = '',
    required Function onOkPress,
    required Function onExitPress,
    Widget? child
  }) {
    AlertDialog androidDialog = AlertDialog(
        content: DialogueCard(
      title: '$message',
      description: '$details',
      onOkPress: () {
        onOkPress();
      },
      onExitPress: () {
        onExitPress();
      },
          child: child,
    ));
    print('loader started ..');

    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return androidDialog;
        });
  }

  static void hideDialogue(BuildContext context) {
    print('hiding loader..');
    // Navigator.pop(context);
    Navigator.of(context, rootNavigator: true).pop();
    // Navigator.of(context).pop();
  }
}

class DialogueCard extends StatelessWidget {
  String title;
  String description;
  String okButtonText;
  String exitButtonText;
  Function()? onOkPress;
  Function()? onExitPress;
  Widget? child;

  DialogueCard(
      {this.title = 'Error',
        this.description = 'Something went wrong',
        this.okButtonText = 'Ok',
        this.exitButtonText = 'Exit',
        this.onOkPress,
        this.onExitPress,
        this.child
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('$title'),
          Text('$description'),
          child ?? Container(),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: onOkPress,
                child: Text('$okButtonText'),
              ),
              TextButton(
                onPressed: onExitPress,
                child: Text('$exitButtonText'),
              )
            ],
          )
        ],
      ),
    );
  }
}
