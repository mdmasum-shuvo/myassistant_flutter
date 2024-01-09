class TaskList {
  int? status;
  String? message;
  Data? data;

  TaskList({this.status, this.message, this.data});

  TaskList.fromJson(Map<String, dynamic> json) {
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
  List<CurrentPageData>? data;
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
      data = <CurrentPageData>[];
      json['data'].forEach((v) {
        data!.add(CurrentPageData.fromJson(v));
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

class CurrentPageData {
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

  CurrentPageData(
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

  CurrentPageData.fromJson(Map<String, dynamic> json) {
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
