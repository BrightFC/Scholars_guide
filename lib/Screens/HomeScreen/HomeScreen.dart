import 'package:scholars_guide/Export.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.5,
            padding: EdgeInsets.all(kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        StudentName(studentName: 'Boruto'),
                        SizedBox(
                          height: kDefaultPadding / 2,
                        ),

                        StudentClass(studentClass: 'Class X-II A | Roll no: 12'),

                        SizedBox(
                          height: kDefaultPadding / 2,
                        ),
                        StudentYear(studentYear: '2023/2024'),
                        SizedBox(
                          height: kDefaultPadding / 6,
                        ),
                      ],
                    ),
                    StudentPicture(picAddress: 'assets/images/fdf340fb6e870dace4b687376b39a138_72_11zon.jpg', onPress: () {
                      Navigator.pushNamed(context, MyProfile.routeName);
                    })
              ],
            ),
                kHalfSizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    StudentDataCard(title: 'Attendance', value: '90.02%', onPress: (){
                      
                    }),
                    StudentDataCard(title: 'Fees Due', value: '600\$', onPress: (){
                      Navigator.pushNamed(context, FeeScreen.routeName);
                    }),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: kOtherColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(kDefaultPadding * 3),
                        topRight: Radius.circular(kDefaultPadding * 3))),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                            onPress: () {},
                            icon: 'assets/icons/9901793.png',
                            title: 'Take Quiz'
                        ),


                        HomeCard(
                            onPress: () {},
                            icon: 'assets/icons/assignment.png',
                            title: 'Assignment'
                        ),

                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                            onPress: () {},
                            icon: 'assets/icons/9367997.png',
                            title: 'Holiday'
                        ),


                        HomeCard(
                            onPress: () {},
                            icon: 'assets/icons/1152005.png',
                            title: 'TimesTable '
                        ),

                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                            onPress: () {},
                            icon: 'assets/icons/result.png',
                            title: 'Result'
                        ),


                        HomeCard(
                            onPress: () {},
                            icon: 'assets/icons/quiz.png',
                            title: 'DateSheet '
                        ),

                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                            onPress: () {},
                            icon: 'assets/icons/3122651.png',
                            title: 'Ask'
                        ),


                        HomeCard(
                            onPress: () {},
                            icon: 'assets/icons/gallery.png',
                            title: 'Gallery '
                        ),

                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                            onPress: () {},
                            icon: 'assets/icons/3886605.png',
                            title: 'Leave\nApplication'
                        ),


                        HomeCard(
                            onPress: () {},
                            icon: 'assets/icons/2655667.png',
                            title: 'Change\nPassword '
                        ),

                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                            onPress: () {},
                            icon: 'assets/icons/7726073.png',
                            title: 'Event'
                        ),


                        HomeCard(
                            onPress: () {},
                            icon: 'assets/icons/4584438.png',
                            title: 'Logout'
                        ),

                      ],
                    ),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard(
      {super.key,
      required this.onPress,
      required this.icon,
      required this.title});
  final VoidCallback onPress;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding / 2),
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kDefaultPadding / 2),
          color: kPrimaryColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              height: 50.0,
              width: 60,
              color: kOtherColor,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0, color: kTextWhiteColor),
            ),
            SizedBox(
              height: kDefaultPadding / 3,
            )
          ],
        ),
      ),
    );
  }
}
