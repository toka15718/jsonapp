import 'package:flutter/material.dart'; //////////////////////////////////first method////////////////////////////
import 'package:json_app/models/json_data.dart';
import 'package:json_app/services/services.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final json_http = Httpline();
    return Scaffold(
      backgroundColor: Colors.white54,
        body: FutureBuilder(
      future: json_http.futurejson(),
      builder: (context, AsyncSnapshot <dynamic> snapshot ) {
                   
        
        dynamic count,counter;
        
        counter=snapshot.connectionState != ConnectionState.done &&
                    !snapshot.hasData
                ? 0
                  
                : snapshot.data.length;
        
        for(var i=0;i<counter;i++){
             count=json_data.fromjson(snapshot.data[i]).getter_id_Allbum;
        }
        // ignore: non_constant_identifier_names
              return snapshot.connectionState != ConnectionState.done &&
                    !snapshot.hasData
                ? Center(child: CircularProgressIndicator(
                    color: Colors.blue,
                    strokeWidth: 5.0,
                  ))
                :ListView.builder(
            itemCount: snapshot.connectionState != ConnectionState.done &&
                    !snapshot.hasData
                ? 0
                : count,
            itemBuilder: (context, i) {
              // ignore: non_constant_identifier_names
              final JsonData = json_data.fromjson(snapshot.data[i]);
              return ListTile(
                title: Padding(padding: EdgeInsets.only(top:15.0),
                  child: Container(
                    decoration:BoxDecoration(borderRadius:BorderRadius.circular(12.0),color: Colors.grey[900], ), 
                child:Text('${JsonData.getter_title_Allbum}',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontFamily:'Montserrat',fontSize: 20.0 ),),),),
                leading: Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Container(
                  width: 40.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.0),
                        color: Colors.grey[900],
                      ),
                      child:Align(alignment: Alignment.center,child: Text('${JsonData.getter_id_post}',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Montserrat',
                              fontSize: 20.0),
                        ),),),),
                subtitle: Padding(padding: EdgeInsets.only(top: 10.0,),
                  child: Text('${JsonData.getter_body_post}',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Montserrat',
                          fontSize: 15.0),
                    ),),

              );
            });
      },
    ));
  }
}
