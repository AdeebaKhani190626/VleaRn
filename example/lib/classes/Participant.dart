import 'Meeting.dart';
import 'VleaRner.dart';
import 'classes/Meeting.dart';

class Participant extends VleaRner{
  Meeting? _attendedMeetings;
  int? _totalAttended;

  int get totalAttended {
    return totalAttended;
  }

  Meeting get attendedMeetings{
    return attendedMeetings;
  }

  set attendedMeetings(Meeting value) {
    _attendedMeetings = value;
  }

  set totalAttended(int value) {
    _totalAttended = value;
  }
  void joinMeeting(){

  }
}