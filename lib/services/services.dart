import 'dart:convert';
import 'package:http/http.dart' as http;

class Httpline{

  Future<List<dynamic>> futurejson()async{
    final String _url='https://jsonplaceholder.typicode.com/albums/';
    final _response=await http.get(Uri.parse(_url));
    final String _url1 = 'https://jsonplaceholder.typicode.com/posts/';
    final _response1 = await http.get(Uri.parse(_url1));
    // ignore: non_constant_identifier_names
    final List<dynamic> DecodeJson0=json.decode(_response.body)as List<dynamic>;
    // ignore: non_constant_identifier_names
    final List<dynamic> DecodeJson1 =json.decode(_response1.body) as List<dynamic>;
    Future.delayed(Duration(microseconds: 1));
    return DecodeJson1+DecodeJson0;
  }
}