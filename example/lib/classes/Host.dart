import 'VleaRner.dart';

import 'Meeting.dart';
import 'classes/Meeting.dart';

class Host extends VleaRner{
  Meeting? _createdMeetings;
  int? _totalCreated;
  int get totalCreated {
    return totalCreated;
  }

  Meeting get createdMeetings{
    return createdMeetings;
  }

  set createdMeetings(Meeting value) {
    _createdMeetings = value;
  }

  set totalCreated(int value) {
    _totalCreated = value;
  }
  void createMeeting(){

  }
}