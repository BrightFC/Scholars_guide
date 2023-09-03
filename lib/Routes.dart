import 'package:scholars_guide/Export.dart';


Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName : (context) => SplashScreen(),
  LoginScreen.routeName : (context) => LoginScreen(),
  HomeScreen.routeName : (context) => HomeScreen(),
  MyProfile.routeName : (context) => MyProfile(),
  FeeScreen.routeName : (context) => FeeScreen(),
};