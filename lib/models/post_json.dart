// ignore: camel_case_types
class post_json {
  int _id;
  int _userid;
  String _title;
  String _body;

  post_json.fromjson(Map<String, dynamic> json) {
    _id = json['id'];
    _userid = json['userid'];
    _title = json['title'];
    _body = json['body'];
  }
  // ignore: non_constant_identifier_names
  get getter_id => _id;
  // ignore: non_constant_identifier_names
  get getter_userid => _userid;
  // ignore: non_constant_identifier_names
  get getter_title => _title;
  // ignore: non_constant_identifier_names
  get getter_body => _body;
}
