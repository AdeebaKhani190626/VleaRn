import 'Host.dart';
import 'Meeting.dart';
import 'Participant.dart';
import 'VleaRner.dart';
import 'classes/Meeting.dart';

class VleaRn{
  Host? _host;
  Participant? _participant;
  Meeting? _meeting;
  VleaRner? _users;


  Host get host {
    return host;
  }
  set host(Host value) {
    _host = value;
  }

  Participant get participant {
    return participant;
  }

  set participant(Participant value) {
    _participant = value;
  }

  VleaRner get user {
    return user;
  }
  set users(VleaRner value) {
    _users = value;
  }


  set meeting(Meeting value) {
    _meeting = value;
  }

  void displayMeetingLog(){

  }
  void generateReminder(){

  }
}