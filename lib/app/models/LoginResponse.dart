/// token : "11|b1iAisDFTMOkUFpCxCtnaaqLQvSwOeRffsw9QEPn"
/// status : 200
/// message : ""

class LoginResponse {
  LoginResponse({
      String? token, 
      num? status, 
      String? message,}){
    _token = token;
    _status = status;
    _message = message;
}

  LoginResponse.fromJson(dynamic json) {
    _token = json['token'];
    _status = json['status'];
    _message = json['message'];
  }
  String? _token;
  num? _status;
  String? _message;
LoginResponse copyWith({  String? token,
  num? status,
  String? message,
}) => LoginResponse(  token: token ?? _token,
  status: status ?? _status,
  message: message ?? _message,
);
  String? get token => _token;
  num? get status => _status;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = _token;
    map['status'] = _status;
    map['message'] = _message;
    return map;
  }

}