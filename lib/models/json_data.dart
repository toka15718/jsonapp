// ignore: camel_case_types
class json_data{
  // ignore: non_constant_identifier_names
  int _id_allbum;
  // ignore: non_constant_identifier_names
  int _id_post;
  // ignore: non_constant_identifier_names
  int _userid_allbum;
  // ignore: non_constant_identifier_names
  int _userid_post;
  // ignore: non_constant_identifier_names
  String _title_allbum;
  // ignore: non_constant_identifier_names
  String _title_post;
  // ignore: non_constant_identifier_names
  String _body_post;
  
  json_data.fromjson(Map<String,dynamic>json){
    _id_allbum =json['id'];
    _id_post = json['id'];
    _userid_allbum=json['userid'];
    _userid_post = json['userid'];
    _title_allbum=json['title'];
    _title_post = json['title'];
    _body_post = json['body'];
  }
  // ignore: non_constant_identifier_names
  get getter_id_Allbum =>_id_allbum;
  // ignore: non_constant_identifier_names
  get getter_id_post =>_id_post;
  // ignore: non_constant_identifier_names
  get getter_userid_Allbum => _userid_allbum;
  // ignore: non_constant_identifier_names
  get getter_userid_post => _userid_post;
  // ignore: non_constant_identifier_names
  get getter_title_Allbum => _title_allbum;
  // ignore: non_constant_identifier_names
  get getter_title_post => _title_post;
  // ignore: non_constant_identifier_names
  get getter_body_post => _body_post;
}