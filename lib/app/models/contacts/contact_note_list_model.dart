class ContactNoteList {
  num? status;
  String? message;
  List<Note>? data;

  ContactNoteList({this.status, this.message, this.data});

  ContactNoteList.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Note>[];
      json['data'].forEach((v) {
        data!.add(Note.fromJson(v));
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

class Note {
  num? id;
  num? userId;
  num? contactListId;
  String? note;
  num? status;
  String? createdAt;
  String? updatedAt;

  Note(
      {this.id,
        this.userId,
        this.contactListId,
        this.note,
        this.status,
        this.createdAt,
        this.updatedAt});

  Note.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    contactListId = json['contact_list_id'];
    note = json['note'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['contact_list_id'] = contactListId;
    data['note'] = note;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
