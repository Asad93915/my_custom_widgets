import 'package:flutter/material.dart';

class MyDropDown extends StatefulWidget {
  const MyDropDown({Key? key}) : super(key: key);

  @override
  _MyDropDownState createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  String? _hintDropDown1 = 'Select From the List';

  List<String> _myDropDownList = [
    "Morning",
    "AfterNoon",
    "Evening",
    "Night",
  ];
String? name='Please Select Name';
List<String> _namesList=[
  'Asad',
  "Harry Son",
  "Ahsan","Usame","Shafqat Sir"
];
String? profession='Select the profession';
List <String> _professionList=[
  "Doctor","Engineer","Pilot","Bussiness Analyist","CEO"
];
String? age="Please Select the age";
  List<String> _ageList=[
    "1 to 18"
    "18  to 28",
    "29 to 39",
    "40 to 50",
    "60 to 70",
    "70 or above"
  ];
  String? colors="Select Color Please";
  List<String> _colorsList=[
    "Red","Green","Black","Blue","Orange"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Drop Down For All",
          style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 20.0),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              padding: EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              decoration: BoxDecoration(
                color: Colors.black12,
                border: Border.all(color: Colors.lightBlueAccent),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  icon: Icon(Icons.arrow_downward),
                  hint: Text(
                    _hintDropDown1!,
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0),
                  ),
                  items: _myDropDownList.map((val) {
                    return DropdownMenuItem(
                      value: val,
                      child: Text(
                        val,
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.bold),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? val) {
                    setState(() {
                      _hintDropDown1 = val;
                    });
                  },
                ),
              ),
            ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 12.0,vertical: 15.0),
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(color: Colors.purpleAccent.shade200),
            color: Colors.blueGrey,
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              isExpanded: true,
              hint: Text(name!,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.green.shade200),),
                items: _namesList.map((val) {
                  return DropdownMenuItem(
                    value: val,
                    child: Text(val,style: TextStyle(color: Colors.orange.shade500,fontWeight: FontWeight.bold,fontSize: 20.0),),
                  );

                }).toList(),
              onChanged: (String? val){
                  setState(() {
                    name=val;
                  });
              },

            ),
          ),
        ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              margin: EdgeInsets.symmetric(horizontal: 13.0,vertical: 15.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.teal),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  isExpanded: true,
                    hint: Text(profession!,style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.indigo),),
                    items:_professionList.map((val){
                      return DropdownMenuItem(
                        value: val,
                        child: Text(val,style: TextStyle(fontSize: 15.0,color: Colors.amber),),
                      );
                    }).toList(),
                  onChanged: (String? res){
                      setState(() {
                        profession=res;
                      });
                  },
                ),
              ),
            ),

    Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 12.0,vertical: 15.0),
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: Colors.deepOrange.shade50)
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            hint: Text(age!,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.pinkAccent,fontSize: 18.0),),
              items: _ageList.map((val){
                return DropdownMenuItem(
                  value: val,
                  child: Text(val,style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.pink),),
                );
              }).toList(),
            onChanged: (String? val){
                setState(() {
                  age=val;
                });
            },
          ),
        ),
    ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12.0,vertical: 15.0),
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.lime),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  isExpanded: true,
                  hint: Text(colors!,style: TextStyle(color: Colors.red,fontSize: 20.0,fontWeight: FontWeight.bold),),
                    items:_colorsList.map((val){
                      return DropdownMenuItem(
                        value: val,
                        child: Text(val,style: TextStyle(color: Colors.tealAccent),),
                      );
                    }).toList(),
                  onChanged: (String? val){
                      setState(() {
                        colors=val;
                      });
                  },
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
