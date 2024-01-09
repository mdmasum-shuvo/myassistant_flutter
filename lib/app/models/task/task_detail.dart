class TaskDetail {
  int? status;
  String? message;
  TaskData? data;

  TaskDetail({this.status, this.message, this.data});

  TaskDetail.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? TaskData.fromJson(json['data']) : null;
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

class TaskData {
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
  String? leadListName;
  String? assignName;
  String? taskStatus;

  TaskData(
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
        this.leadListName,
        this.assignName,
        this.taskStatus});

  TaskData.fromJson(Map<String, dynamic> json) {
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
    leadListName = json['lead_list_name'];
    assignName = json['assign_name'];
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
    data['lead_list_name'] = leadListName;
    data['assign_name'] = assignName;
    data['task_status'] = taskStatus;
    return data;
  }
}
