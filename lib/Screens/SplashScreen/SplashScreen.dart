import 'package:scholars_guide/Export.dart';


class SplashScreen extends StatelessWidget {
  static String routeName = 'SplashScreen';

  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 5), (){
      Navigator.pushNamedAndRemoveUntil(context, LoginScreen.routeName, (route) => false
      );
    }
    );

    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Schoolars'", style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: kTextWhiteColor,
                  fontSize: 45.0,
                  fontStyle: FontStyle.italic,
                ),
                ),
                Text("Guide", style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: kTextWhiteColor,
                    fontSize: 50.0,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 2.0
                ),
                ),
              ],
            ),
            Image.asset('assets/images/Logo (2).png',
            height: 150.0,
              width: 150.0,
            )
          ],
        ),
      ),
    );
  }
}

