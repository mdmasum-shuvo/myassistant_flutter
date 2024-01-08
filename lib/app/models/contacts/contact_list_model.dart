class ContactList {
  num? status;
  String? message;
  List<ContactData>? data;

  ContactList({this.status, this.message, this.data});

  ContactList.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <ContactData>[];
      json['data'].forEach((v) {
        data!.add(ContactData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ContactData {
  num? id;
  String? name;
  String? userid;
  String? dob;
  String? email;
  String? phoneNumber;
  String? whatsapp;
  String? address;
  String? securityNumber;
  num? userId;
  num? status;
  String? createdAt;
  String? updatedAt;

  ContactData(
      {this.id,
        this.name,
        this.userid,
        this.dob,
        this.email,
        this.phoneNumber,
        this.whatsapp,
        this.address,
        this.securityNumber,
        this.userId,
        this.status,
        this.createdAt,
        this.updatedAt});

  ContactData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    userid = json['userid'];
    dob = json['dob'];
    email = json['email'];
    phoneNumber = json['phone_number'];
    whatsapp = json['whatsapp'];
    address = json['address'];
    securityNumber = json['security_number'];
    userId = json['user_id'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['userid'] = userid;
    data['dob'] = dob;
    data['email'] = email;
    data['phone_number'] = phoneNumber;
    data['whatsapp'] = whatsapp;
    data['address'] = address;
    data['security_number'] = securityNumber;
    data['user_id'] = userId;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
