import 'package:scholars_guide/Export.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Scholars' Guide",
      //we will use light theme for our app
      theme: ThemeData.light().copyWith(
        //scaffold default color
        scaffoldBackgroundColor: kPrimaryColor,
        appBarTheme: AppBarTheme(
          color: kPrimaryColor,
          elevation: 0,
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: kTextWhiteColor,
            fontSize: 35.0,
            fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(
            color: kTextWhiteColor,
            fontSize: 28.0,
          ),
          subtitle1: TextStyle(
            color: kTextWhiteColor,
            fontSize: 22.0,
            fontWeight: FontWeight.w500
          ),
          subtitle2: TextStyle(
              color: kTextWhiteColor,
              fontSize: 22.0,
            fontWeight: FontWeight.w300
          )
        ),
        primaryColor: kPrimaryColor,
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(
            fontSize: 15.0,
            color: kTextLightColor,
            height: 0.5
        ),
        hintStyle: TextStyle(
            fontSize: 16.0,
            color: kTextBlackColor,
            height: 0.5
        ),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: kTextLightColor,
                width: 0.7
            )
        ),
        border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kTextLightColor,
            )
        ),
        disabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kTextLightColor,
            )
        ),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kPrimaryColor,
            )
        ),
        errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: kErrorBorderColor,
                width: 1.2
            )
        ),
        focusedErrorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: kErrorBorderColor,
                width: 1.2
            )
        ),
      )
      ),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}