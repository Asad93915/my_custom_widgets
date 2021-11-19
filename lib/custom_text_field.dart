import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_custom_widgets/custom_button.dart';
import 'custom_snackBar.dart';

class MyTextField extends StatefulWidget {
  late IconData? prefixIcon;
  late IconData? postfixIcon;
  final String? labelText;
  final String? hintText;
  final double width;
  final Function(String)? onchange;
  final Function()? onPressed;
  final bool obscure;
  final TextInputType? inputType;
  final TextEditingController? controller;

  // late final FocusNode? focusNode;
  final FocusNode? focusNode;
  final int? length;
  final TextInputAction inputAction;

  final Color? textFieldColor;

  MyTextField({
    this.focusNode,
    this.labelText,
    this.hintText,
    this.inputType,
    this.controller,
    this.width = double.infinity,
    this.prefixIcon,
    this.postfixIcon,
    this.onchange,
    this.obscure = false,
    this.length,
    this.inputAction = TextInputAction.done,
    this.onPressed,
    this.textFieldColor = Colors.white,
  });

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  // bool _validate = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 1.0),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              (widget.labelText == null)
                  ? SizedBox()
                  : Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        widget.labelText!,
                        // style: TextStyle(color: TextFieldTitleColor),
                      ),
                    ),
              Container(
                margin: EdgeInsets.only(top: 6.0),
                padding: EdgeInsets.only(left: 4.0, right: 4.0),

                // height: widget.height,
                width: widget.width,
                child: TextField(
                  minLines: 1,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(widget.length)
                  ],
                  onChanged: widget.onchange,
                  controller: widget.controller,
                  obscureText: widget.obscure,
                  keyboardType: widget.inputType,
                  focusNode: widget.focusNode,
                  textInputAction: widget.inputAction,

                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15.0,
                  ),
                  // cursorColor: Color(0xFF7f7f7f),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 12.0, bottom: 12.0),

                    fillColor: widget.textFieldColor,
                    // fillColor: Color(0xFFBED0E9),//BED0E9
                    focusColor: Colors.white,
                    hoverColor: Colors.white,
                    filled: true,
                    hintText: widget.hintText,
                    hintStyle: TextStyle(color: Colors.black54),

                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFdedede),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFdedede),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(6.0),
                    ),

                    prefixIcon: widget.prefixIcon == null
                        ? null
                        : Icon(
                            widget.prefixIcon,
                            color: Colors.black54,
                          ),
                    suffixIcon: widget.postfixIcon == null
                        ? null
                        : IconButton(
                            icon: Icon(
                              widget.postfixIcon,
                              color: Colors.black54,
                            ),
                            onPressed: widget.onPressed,
                            color: Colors.white,
                            // color: Colors.black54,
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailCont = TextEditingController();
  TextEditingController _passwordCont = TextEditingController();

  FocusNode _emailFocus = FocusNode();
  FocusNode _passwordFocus = FocusNode();

  bool _isObscure = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        currentFocus.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Custom TextField Testing"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyTextField(
                prefixIcon: Icons.email,
                labelText: "Email",
                hintText: "e_mail",
                inputAction: TextInputAction.next,
                controller: _emailCont,
                focusNode: _emailFocus,
              ),
              MyTextField(
                prefixIcon: Icons.password,
                labelText: "Password",
                hintText: "Password",
                obscure: _isObscure,
                postfixIcon:
                    _isObscure ? Icons.visibility : Icons.visibility_off,
                onPressed: () {
                  _isObscure = !_isObscure;
                  setState(() {});
                },
                inputAction: TextInputAction.next,
                controller: _passwordCont,
                focusNode: _passwordFocus,
              ),
              MyCustomButton(
                onPressed: () {
                  _onValidateLogin();
                },
                text: "LogIn",
                textColor: Colors.white,
                bgColor: Colors.blue,
                width: 200.0,
                height: 50.0,
              )
            ],
          ),
        ),
      ),
    );
  }

  _onValidateLogin() {
    if (_emailCont.text.isEmpty) {
      CustomSnackBar.failedSnackBar(
          context: context, message: "Enter Valid Email");
      _emailFocus.requestFocus();
      return false;
    } else if (_passwordCont.text.isEmpty) {
      CustomSnackBar.failedSnackBar(
          context: context, message: "Password Field Required");
      _passwordFocus.requestFocus();
      return false;
    } else {
      return true;
    }
  }
}
