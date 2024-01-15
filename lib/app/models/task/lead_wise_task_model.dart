class LeadWiseTask {
  int? status;
  String? message;
  List<LeadData>? data;

  LeadWiseTask({this.status, this.message, this.data});

  LeadWiseTask.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <LeadData>[];
      json['data'].forEach((v) {
        data!.add(LeadData.fromJson(v));
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

class LeadData {
  int? id;
  int? activityTypeId;
  int? assingTo;
  int? leadListId;
  String? taskTitile;
  String? taskDetails;
  int? status;
  String? dueDate;
  int? userId;
  String? setRemainder;
  String? createdAt;
  String? updatedAt;
  String? firstName;
  String? lastName;
  String? taskStatus;

  LeadData(
      {this.id,
        this.activityTypeId,
        this.assingTo,
        this.leadListId,
        this.taskTitile,
        this.taskDetails,
        this.status,
        this.dueDate,
        this.userId,
        this.setRemainder,
        this.createdAt,
        this.updatedAt,
        this.firstName,
        this.lastName,
        this.taskStatus});

  LeadData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    activityTypeId = json['activity_type_id'];
    assingTo = json['assing_to'];
    leadListId = json['lead_list_id'];
    taskTitile = json['task_titile'];
    taskDetails = json['task_details'];
    status = json['status'];
    dueDate = json['due_date'];
    userId = json['user_id'];
    setRemainder = json['set_remainder'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    taskStatus = json['task_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['activity_type_id'] = activityTypeId;
    data['assing_to'] = assingTo;
    data['lead_list_id'] = leadListId;
    data['task_titile'] = taskTitile;
    data['task_details'] = taskDetails;
    data['status'] = status;
    data['due_date'] = dueDate;
    data['user_id'] = userId;
    data['set_remainder'] = setRemainder;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['task_status'] = taskStatus;
    return data;
  }
}
