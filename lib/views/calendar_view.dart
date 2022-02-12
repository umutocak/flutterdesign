import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalendarViews extends StatefulWidget {
  const CalendarViews({Key? key}) : super(key: key);

  @override
  _CalendarViewState createState() => _CalendarViewState();
}

class _CalendarViewState extends State<CalendarViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Calendar example",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: SfCalendar(
                view: CalendarView.schedule,
                showDatePickerButton: true,
                showCurrentTimeIndicator: true,
                allowAppointmentResize: true,
                showNavigationArrow: true,
                dataSource: MeetingDataSource(getDataSource()),
                scheduleViewSettings: const ScheduleViewSettings(
                    hideEmptyScheduleWeek: true,
                    dayHeaderSettings: DayHeaderSettings(
                        dayFormat: 'EEEE',
                        dayTextStyle: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey,
                        ),
                        dateTextStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey,
                        )),
                    weekHeaderSettings: WeekHeaderSettings(
                        startDateFormat: 'dd MMM ',
                        endDateFormat: 'dd MMM, yyy',
         
                        textAlign: TextAlign.left,
                        weekTextStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        )),
                    monthHeaderSettings: MonthHeaderSettings(
                        monthFormat: 'MMMM',
                        height: 50,
                        textAlign: TextAlign.start,
                        backgroundColor: Colors.transparent,
                        monthTextStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold))),
              ),
      ),
    );
  }

  List<Meeting> getDataSource() {
    final List<Meeting> meetings = <Meeting>[];
    final DateTime today = DateTime.now();
    final DateTime startTime =
        DateTime(today.year, today.month, today.day, 9, 0, 0);
    final DateTime endTime = startTime.add(const Duration(hours: 2));
    meetings.clear();
    meetings.add(Meeting(
        'Conference', startTime, endTime, const Color(0xFF0F8644), false));
    meetings.add(Meeting('test', DateTime(2022, 2, 1), DateTime(2022, 2, 1),
        const Color(0xff1C658C), false));
        meetings.add(Meeting('Follow me', DateTime(2022, 2, 4), DateTime(2022, 2, 4),
        const Color(0xff1C658C), false));
    return meetings;
  }
}

class MeetingDataSource extends CalendarDataSource {
  /// Creates a meeting data source, which used to set the appointment
  /// collection to the calendar
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return _getMeetingData(index).from;
  }

  @override
  DateTime getEndTime(int index) {
    return _getMeetingData(index).to;
  }

  @override
  String getSubject(int index) {
    return _getMeetingData(index).eventName;
  }

  @override
  Color getColor(int index) {
    return _getMeetingData(index).background;
  }

  @override
  bool isAllDay(int index) {
    return _getMeetingData(index).isAllDay;
  }

  Meeting _getMeetingData(int index) {
    final dynamic meeting = appointments![index];
    late final Meeting meetingData;
    if (meeting is Meeting) {
      meetingData = meeting;
    }

    return meetingData;
  }
}

/// Custom business object class which contains properties to hold the detailed
/// information about the event data which will be rendered in calendar.
class Meeting {
  /// Creates a meeting class with required details.
  Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);

  /// Event name which is equivalent to subject property of [Appointment].
  String eventName;

  /// From which is equivalent to start time property of [Appointment].
  DateTime from;

  /// To which is equivalent to end time property of [Appointment].
  DateTime to;

  /// Background which is equivalent to color property of [Appointment].
  Color background;

  /// IsAllDay which is equivalent to isAllDay property of [Appointment].
  bool isAllDay;
}
