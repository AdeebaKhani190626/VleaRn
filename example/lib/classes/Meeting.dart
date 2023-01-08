class Meeting{
  String? _id;
  String? _link;
  String? _name;
  String? _password;
  String? _createdBy;
  String? _startTime;
  String? _duration;
  String? _endTime;
  String? _reminder;
  String? _meetingStatus;
  String? _attendedBy;

  String get id {
    return id;
  }
  set id(String value) {
    _id = value;
  }

  String get link {
    return link;
  }
  String get attendedBy {
    return attendedBy;
  }
  set attendedBy(String value) {
    _attendedBy = value;
  }

  String get meetingStatus {
    return meetingStatus;
  }
  set meetingStatus(String value) {
    _meetingStatus = value;
  }

  String get reminder {
    return reminder;
  }

  set reminder(String value) {
    _reminder = value;
  }

  String get endTime {
    return endTime;
  }

  set endTime(String value) {
    _endTime = value;
  }

  String get duration {
    return duration;
  }
  set duration(String value) {
    _duration = value;
  }

  String get startTime {
    return startTime;
  }

  set startTime(String value) {
    _startTime = value;
  }

  String get createdBy {
    return createdBy;
  }

  set createdBy(String value) {
    _createdBy = value;
  }

  String get password {
    return password;
  }

  set password(String value) {
    _password = value;
  }

  String get name {
    return name;
  }

  set name(String value) {
    _name = value;
  }

  set link(String value) {
    _link = value;
  }
}