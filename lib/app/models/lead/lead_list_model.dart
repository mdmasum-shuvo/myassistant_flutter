class LeadList {
  int? status;
  String? message;
  Data? data;

  LeadList({this.status, this.message, this.data});

  LeadList.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? currentPage;
  List<Lead>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  List<Links>? links;
  String? nextPageUrl;
  String? path;
  int? perPage;
  String? prevPageUrl;
  int? to;
  int? total;

  Data(
      {this.currentPage,
        this.data,
        this.firstPageUrl,
        this.from,
        this.lastPage,
        this.lastPageUrl,
        this.links,
        this.nextPageUrl,
        this.path,
        this.perPage,
        this.prevPageUrl,
        this.to,
        this.total});

  Data.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    if (json['data'] != null) {
      data = <Lead>[];
      json['data'].forEach((v) {
        data!.add(Lead.fromJson(v));
      });
    }
    firstPageUrl = json['first_page_url'];
    from = json['from'];
    lastPage = json['last_page'];
    lastPageUrl = json['last_page_url'];
    if (json['links'] != null) {
      links = <Links>[];
      json['links'].forEach((v) {
        links!.add(Links.fromJson(v));
      });
    }
    nextPageUrl = json['next_page_url'];
    path = json['path'];
    perPage = json['per_page'];
    prevPageUrl = json['prev_page_url'];
    to = json['to'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['current_page'] = currentPage;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['first_page_url'] = firstPageUrl;
    data['from'] = from;
    data['last_page'] = lastPage;
    data['last_page_url'] = lastPageUrl;
    if (links != null) {
      data['links'] = links!.map((v) => v.toJson()).toList();
    }
    data['next_page_url'] = nextPageUrl;
    data['path'] = path;
    data['per_page'] = perPage;
    data['prev_page_url'] = prevPageUrl;
    data['to'] = to;
    data['total'] = total;
    return data;
  }
}

class Lead {
  int? id;
  String? firstName;
  String? lastName;
  int? pickFromContactId;
  String? phoneNumber;
  String? email;
  int? assignExecutiveId;
  int? sourceId;
  int? channelPartnerId;
  String? projectName;
  int? status;
  int? userId;
  String? createdAt;
  String? updatedAt;
  String? pickFromContactName;
  String? leadStatus;

  Lead(
      {this.id,
        this.firstName,
        this.lastName,
        this.pickFromContactId,
        this.phoneNumber,
        this.email,
        this.assignExecutiveId,
        this.sourceId,
        this.channelPartnerId,
        this.projectName,
        this.status,
        this.userId,
        this.createdAt,
        this.updatedAt,
        this.pickFromContactName,
        this.leadStatus});

  Lead.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    pickFromContactId = json['pick_from_contact_id'];
    phoneNumber = json['phone_number'];
    email = json['email'];
    assignExecutiveId = json['assign_executive_id'];
    sourceId = json['source_id'];
    channelPartnerId = json['channel_partner_id'];
    projectName = json['project_name'];
    status = json['status'];
    userId = json['user_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    pickFromContactName = json['pick_from_contact_name'];
    leadStatus = json['lead_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['pick_from_contact_id'] = pickFromContactId;
    data['phone_number'] = phoneNumber;
    data['email'] = email;
    data['assign_executive_id'] = assignExecutiveId;
    data['source_id'] = sourceId;
    data['channel_partner_id'] = channelPartnerId;
    data['project_name'] = projectName;
    data['status'] = status;
    data['user_id'] = userId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['pick_from_contact_name'] = pickFromContactName;
    data['lead_status'] = leadStatus;
    return data;
  }
}

class Links {
  String? url;
  String? label;
  bool? active;

  Links({this.url, this.label, this.active});

  Links.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    label = json['label'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['label'] = label;
    data['active'] = active;
    return data;
  }
}
