import 'package:flutter/material.dart';

class CustomRadioListTileTesting extends StatefulWidget {
  const CustomRadioListTileTesting({Key? key}) : super(key: key);

  @override
  State<CustomRadioListTileTesting> createState() => _CustomRadioListTileTestingState();
}

class _CustomRadioListTileTestingState extends State<CustomRadioListTileTesting> {
   String selectedValue='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Radio List Tile",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.black54),),
        backgroundColor:Colors.white,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListView.builder(

            itemCount: 10,
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (BuildContext,index){
            return  CustomRadioListTile(
              value: index.toString(),
                radioText: "Asad Ali",
                selectedValue: selectedValue,
                onTap: (val){
              selectedValue=val!;
              setState(() {

              });
            });
          })
        ],
      ),
    );
  }
}






class CustomRadioListTile extends StatelessWidget {
  final String? value;
  final String? selectedValue;
  final Function(String?) onTap;
  final String? radioText;
   CustomRadioListTile({
    this.value,this.selectedValue,required this.onTap,this.radioText=''
});

  @override
  Widget build(BuildContext context) {
    return RadioListTile<String>(
        value: value!,
        groupValue: selectedValue,
        onChanged: onTap,
      title: Text(radioText!,style:TextStyle(color: Colors.black54,fontSize: 16.0) ,),

    );
  }
}
