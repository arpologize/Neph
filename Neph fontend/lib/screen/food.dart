import 'package:flutter/material.dart';

class Food extends StatefulWidget{
  @override
  FoodState createState() => FoodState();
}

class DataSearch extends SearchDelegate<String>{
  final list = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U"
  ];

  final re = [
    "A",
    "B",
    "C"
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
      return [IconButton(icon: Icon(Icons.clear), onPressed: (){})];
    }
  
    @override
    Widget buildLeading(BuildContext context) {
      return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: (){});
    }
  
    @override
    Widget buildResults(BuildContext context) {
      // TODO: implement buildResults
      throw UnimplementedError();
    }
  
    @override
    Widget buildSuggestions(BuildContext context) {
      final suggestionList = query.isEmpty?re:list;

      return ListView.builder(itemBuilder: (context,index)=>ListTile(
        leading: Icon(Icons.location_city),
        title: Text(suggestionList[index])
        ),
      itemCount: suggestionList.length,
      );
  }
}

class FoodState extends State<Food>{

  List<String> list = ["test","apple","money","pony","rod","crown","the","annie","fizz","shaco","polk","ahog","asda","vnt","scv","dtg","nmk","dty","tyu","iou","klo","plo","aqw"];
  List<String> show = [];

  Widget searchPart(){
    return Container(
        width: 320.0,
        height: 50,
        child: new Theme(
          data: new ThemeData(
              primaryColor: const Color(0xff2aafaf),
              primaryColorDark: const Color(0xff2aafaf),
              hintColor: const Color(0xff2aafaf)),
          child: new TextField(
            decoration: new InputDecoration(
              hintText: 'Search',
              enabled: true,
              filled: true,
              prefixIcon: Icon(
                Icons.search,
                color: Color(0xff2aafaf),
                size: 35
              ),
              fillColor: Color(0xffe7f9f9),
              border: new OutlineInputBorder(
                borderSide:
                    new BorderSide(color: const Color(0xff2aafaf), width: 10.0),
                borderRadius:
                    const BorderRadius.all(const Radius.circular(20.0)),
              ),
              labelText: '   Search for meal...',
              labelStyle: TextStyle(color: const Color(0xff2aafaf)),
            ),
            onChanged: (value){
              // setState(() {
                print('value $value');
                for(var i = 0; i < list.length; i++){
                  if(value != "" && list[i].toLowerCase().contains(value.toLowerCase())){
                    show.add(list[i]);
                  }else if(value == ""){
                    show = list;
                  }
                }
              // }
              // );
            },
          ),
        ));
  }

  Widget showView(){
    return Expanded(
      child: ListView.builder(
          itemCount: show.length,
          itemBuilder: (BuildContext context, int index){
            return 
            // Container(
              // height: 50,
              // width: 50,
              // child: 
              Center(child: Text(show[index],style: TextStyle(fontSize: 15)));
            // );
      })
    );
  }

  Widget foodPart(){
     return Container(
      width:375,
      height:620,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        color: Colors.white
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(height: 10),
          searchPart(),
          SizedBox(height: 20),
          // showView()
        ],
      )
    );
  }

  Widget back(){
    return Container(
      child:
      Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 25
            ),
              onPressed: (){
                int a = 0;
              }),
          
          SizedBox(
            width: 320.0,
          ),
        ]
      )
    );
  }

  Widget namePage(){
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[

          SizedBox(
            width: 20.0,
          ),

          Icon(
            Icons.fastfood,
            color: Colors.black,
            size: 35
          ),

          SizedBox(
            width: 10.0,
          ),

          Text('BREAKFAST',style: TextStyle(fontFamily: 'Segoe UI',
            fontSize: 20,fontWeight: FontWeight.bold)),

          SizedBox(
            width: 210.0,
          ),
        ]
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: SingleChildScrollView( 
            child: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min, children: <Widget>[

              SizedBox(
                height: 10.0,
              ),

              back(),

              SizedBox(
                height: 5.0,
              ),

              namePage(),

              SizedBox(
                  height: 20.0,
                ),
              Center(child: foodPart()),
            ])
          ),
        ),
        backgroundColor: Color(0xffe7f9f9),
    );
  }
}