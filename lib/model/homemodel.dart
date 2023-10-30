class Homemodel {
  int? contentId;
  String? category;
  String? contentType;
  String? title;
  String? description;
  String? contentLink;
  String? status;
  String? scheduleFromDate;
  String? scheduleToDate;
  String? companyName;

  Homemodel(
      {this.contentId,
        this.category,
        this.contentType,
        this.title,
        this.description,
        this.contentLink,
        this.status,
        this.scheduleFromDate,
        this.scheduleToDate,
        this.companyName});

  Homemodel.fromJson(Map<String, dynamic> json) {
    contentId = json['ContentId'];
    category = json['Category'];
    contentType = json['ContentType'];
    title = json['Title'];
    description = json['Description'];
    contentLink = json['ContentLink'];
    status = json['Status'];
    scheduleFromDate = json['ScheduleFromDate'];
    scheduleToDate = json['ScheduleToDate'];
    companyName = json['CompanyName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ContentId'] = this.contentId;
    data['Category'] = this.category;
    data['ContentType'] = this.contentType;
    data['Title'] = this.title;
    data['Description'] = this.description;
    data['ContentLink'] = this.contentLink;
    data['Status'] = this.status;
    data['ScheduleFromDate'] = this.scheduleFromDate;
    data['ScheduleToDate'] = this.scheduleToDate;
    data['CompanyName'] = this.companyName;
    return data;
  }
}