import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color whiteColor = Colors.white;
  Color offwhiteColor = Colors.white12;

  Color maleColor = Colors.white;
  Color femaleColor = Colors.white12;

  double _value = 0.0;
  void _onChanged(value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1a1a2e),
      appBar: AppBar(
        title: Text("BMI CALCUATOR"),
        backgroundColor: Color(0xFF1a1a2e),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    maleColor = whiteColor;
                    femaleColor = offwhiteColor;
                  });
                },
                child: Container(
                  //margin: EdgeInsets.symmetric(horizontal: 4),
                  width: MediaQuery.of(context).size.width / 2.5,
                  padding: EdgeInsets.all(16),
                  color: Color(0xFF0f3460),
                  child: Column(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.mars,
                        color: maleColor,
                        size: MediaQuery.of(context).size.width / 4,
                      ),
                      Text(
                        "MALE",
                        style: TextStyle(color: maleColor, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 5),
              InkWell(
                onTap: () {
                  setState(() {
                    femaleColor = whiteColor;
                    maleColor = offwhiteColor;
                  });
                },
                child: Container(
                  // margin: EdgeInsets.symmetric(horizontal: 4),
                  width: MediaQuery.of(context).size.width / 2.5,
                  padding: EdgeInsets.all(16),
                  color: Color(0xFF0f3460),
                  child: Column(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.venus,
                        color: femaleColor,
                        size: MediaQuery.of(context).size.width / 4,
                      ),
                      Text("FEMALE",
                          style: TextStyle(color: femaleColor, fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          //Height widget
          Container(
              margin: EdgeInsets.symmetric(horizontal: 34),
              width: MediaQuery.of(context).size.width,
              color: Color(0xFF16213e),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    "HEIGHT",
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    _value.toInt().toString() + "cm",
                    style: TextStyle(fontSize: 32, color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Slider(
                      //divisions: 5,
                      min: 0.0,
                      max: 200,
                      value: _value, onChanged: _onChanged,

                      inactiveColor: Colors.red,
                      activeColor: Colors.red,
                    ),
                  )
                ],
              ),
              ),
              SizedBox(height:20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Container(
                  width: MediaQuery.of(context).size.width/2.5,
                  //margin: EdgeInsets.symmetric(horizontal: 18, vertical: 16),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  color: Color(0xFF16213e)  ,
                  child: Column(
                  children: [
                    Text("WEIGHT", style: TextStyle(color:Colors.white60, fontWeight: FontWeight.bold, fontSize: 20),),
                  Text("70", style: TextStyle(color: whiteColor, fontSize: 36, fontWeight: FontWeight.w900),),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF0f3460),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: FaIcon(Icons.add, color: whiteColor, size: MediaQuery.of(context).size.width/8,)),
                    SizedBox(width:10),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF0f3460),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: FaIcon(Icons.remove ,color: whiteColor, size: MediaQuery.of(context).size.width/8),
                      ),
                  
                  ],
                  )
                
                  ],
                  )
                ),
                SizedBox(width:10),
                Container(

                  width: MediaQuery.of(context).size.width/2.5,
                  margin: EdgeInsets.symmetric( vertical: 16),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  color: Color(0xFF16213e)  ,
                  child: Column(
                  children: [
                    Text("WEIGHT", style: TextStyle(color:Colors.white60, fontWeight: FontWeight.bold, fontSize: 20),),
                  Text("70", style: TextStyle(color: whiteColor, fontSize: 36, fontWeight: FontWeight.w900),
                  
                  ),                  
                  SizedBox(height: 15,),
                  Row(

                      mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Container(
                      //padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Color(0xFF0f3460),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: FaIcon(Icons.add, color: whiteColor, size: MediaQuery.of(context).size.width/8,)),
                    SizedBox(width:10),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF0f3460),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: FaIcon(Icons.remove ,color: whiteColor, size: MediaQuery.of(context).size.width/8),
                      ),
                  
                  ],
                  ),

                
                  ],
                  )
                )
              ],
              ),
              
                  FlatButton(onPressed: (){}, child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 18),
                    padding: EdgeInsets.symmetric(vertical: 8),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.red, 
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: Text("Calculate", style: TextStyle(color: whiteColor, fontSize: 36, fontWeight: FontWeight.bold),
                  )
                  )
                  )
        ],
      ),
    );
  }
}
