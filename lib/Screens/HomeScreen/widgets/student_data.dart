import 'package:scholars_guide/Export.dart';

class StudentName extends StatelessWidget {
  const StudentName({super.key, required this.studentName});
  final String studentName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Row(
              children: [
                Text(
                  'Hi ',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: kTextWhiteColor,
                    fontSize:
                    MediaQuery.of(context).size.height / 30,
                  ),
                ),
                Text(
                  studentName,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: kTextWhiteColor,
                    fontSize:
                    MediaQuery.of(context).size.height / 30,
                  ),
                ),
              ],
            ),
      ],
    ),
    ]
    );
  }
}

class StudentClass extends StatelessWidget {
  const StudentClass({super.key, required this.studentClass});
  final String studentClass;

  @override
  Widget build(BuildContext context) {
    return
      Text(
        studentClass,
        style: TextStyle(
          fontWeight: FontWeight.w300,
          color: kTextWhiteColor,
          fontSize: MediaQuery.of(context).size.height / 50,
        ),
      );
  }
}

class StudentYear extends StatelessWidget {
  const StudentYear({super.key, required this.studentYear});
  final String studentYear;

  @override
  Widget build(BuildContext context) {
    return
      Container(
        width: 100,
        height: 20,
        decoration: BoxDecoration(
            color: kOtherColor,
            borderRadius:
            BorderRadius.circular(kDefaultPadding)),
        child: Center(
          child: Text(
            studentYear,
            style: TextStyle(
                fontSize: 14.0,
                color: kTextBlackColor,
                fontWeight: FontWeight.w300),
          ),
        ),
      );
  }
}

class StudentPicture extends StatelessWidget {
  const StudentPicture({super.key, required this.picAddress, required this.onPress,});
  final String picAddress;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: CircleAvatar(
        minRadius: 50.0,
        maxRadius: 50.0,
        backgroundColor: kSecondaryColor,
        backgroundImage: AssetImage(
            picAddress),
      ),
    );
  }
}

class StudentDataCard extends StatelessWidget {
  const StudentDataCard({super.key, required this.title, required this.value, required this.onPress});
  final String title;
  final String value;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 9,
        decoration: BoxDecoration(
            color: kOtherColor,
            borderRadius:
            BorderRadius.circular(kDefaultPadding)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: kTextBlackColor,
                  fontSize: 16.0),
            ),
            Text(
              value,
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: kTextBlackColor,
                  fontSize: 25.0),
            ),
          ],
        ),
      ),
    );
  }
}
