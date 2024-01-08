class InvoiceList {
  num? status;
  String? message;
  List<Invoice>? data;

  InvoiceList({this.status, this.message, this.data});

  InvoiceList.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Invoice>[];
      json['data'].forEach((v) {
        data!.add(Invoice.fromJson(v));
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

class Invoice {
  num? id;
  num? userId;
  num? contactListId;
  String? itemName;
  String? price;
  num? status;
  String? createdAt;
  String? updatedAt;

  Invoice(
      {this.id,
        this.userId,
        this.contactListId,
        this.itemName,
        this.price,
        this.status,
        this.createdAt,
        this.updatedAt});

  Invoice.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    contactListId = json['contact_list_id'];
    itemName = json['item_name'];
    price = json['price'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['contact_list_id'] = contactListId;
    data['item_name'] = itemName;
    data['price'] = price;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
