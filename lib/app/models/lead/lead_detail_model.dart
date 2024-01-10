class LeadDetail {
  int? status;
  String? message;
  Detail? data;

  LeadDetail({this.status, this.message, this.data});

  LeadDetail.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Detail.fromJson(json['data']) : null;
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

class Detail {
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
  String? assignExecutiveName;
  String? pickFromContactName;
  String? channelPartnerName;
  String? leadStatus;

  Detail(
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
        this.assignExecutiveName,
        this.pickFromContactName,
        this.channelPartnerName,
        this.leadStatus});

  Detail.fromJson(Map<String, dynamic> json) {
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
    assignExecutiveName = json['assign_executive_name'];
    pickFromContactName = json['pick_from_contact_name'];
    channelPartnerName = json['channel_partner_name'];
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
    data['assign_executive_name'] = assignExecutiveName;
    data['pick_from_contact_name'] = pickFromContactName;
    data['channel_partner_name'] = channelPartnerName;
    data['lead_status'] = leadStatus;
    return data;
  }
}
