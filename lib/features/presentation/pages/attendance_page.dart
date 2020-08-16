import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Student {
  String name;
  bool attended;

  Student({@required this.name, @required this.attended});
}

class AttendancePage extends StatefulWidget {
  @override
  _AttendancePageState createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  String weekday = 'Week 1';

  List<Student> studentList = <Student>[
    Student(name: 'Odin', attended: true),
    Student(name: 'Tope', attended: false),
    Student(name: 'Temi', attended: false),
    Student(name: 'Ayomide', attended: false),
    Student(name: 'Ayobami', attended: true),
    Student(name: 'Pandora', attended: false),
    Student(name: 'Sheikh', attended: false),
    Student(name: 'Ugo', attended: false),
    Student(name: 'Isong', attended: true),
    Student(name: 'Tola', attended: true),
    Student(name: 'Feyi', attended: false),
    Student(name: 'Gozie', attended: false),
    Student(name: 'Osaik', attended: true),
    Student(name: 'Chinaza', attended: false),
  ];

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
      ),
      child: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              header,
              studentInfoHeading,
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: ListView.builder(
                    itemCount: studentList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          studentList[index].name,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        trailing: studentList[index].attended
                            ? Icon(
                                Icons.check_circle,
                                color: Theme.of(context).primaryColor,
                              )
                            : Icon(
                                Icons.cancel,
                                color: Theme.of(context).errorColor,
                              ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget get header => Padding(
        padding: EdgeInsets.all(24.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                'Mirai',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Image.asset(
              'assets/icons/mirai-logo.png',
              width: 24.0,
            ),
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.list,
                size: 24.0,
              ),
              color: Theme.of(context).primaryColor,
              onPressed: () {},
              constraints: BoxConstraints(),
              padding: EdgeInsets.only(left: 8.0),
            )
          ],
        ),
      );

  Widget get studentInfoHeading => Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Student Name',
              style: Theme.of(context).textTheme.caption,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              height: 40.0,
              child: DropdownButton<String>(
                value: weekday,
                icon: Icon(Icons.keyboard_arrow_down),
                iconSize: 24,
                style: Theme.of(context).textTheme.bodyText1,
                underline: Container(
                  color: Colors.transparent,
                ),
                onChanged: (String newValue) {
                  setState(() {
                    weekday = newValue;
                  });
                },
                items: [
                  'Week 1',
                  'Week 2',
                  'Week 3',
                  'Week 4',
                  'Week 5',
                  'Week 6',
                  'Week 7',
                  'Week 8',
                  'Week 9',
                  'Week 10',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      );
}
