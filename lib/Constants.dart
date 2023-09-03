import 'package:scholars_guide/Export.dart';
//colors
const Color kPrimaryColor = Color(0xFF345FB4);
const Color kSecondaryColor = Color(0xFF6789CA);
const Color kTextBlackColor = Color(0xFF313131);
const Color kTextWhiteColor = Color(0xFFFFFFFF);
const Color kContainerColor = Color(0xFF777777);
const Color kOtherColor = Color(0xFFF4F6F7);
const Color kTextLightColor = Color(0xFFA5A5A5);
const Color kErrorBorderColor = Color(0xFFE74C3C);

//default value
const kDefaultPadding = 28.0;

const sizedBox = SizedBox(height: kDefaultPadding);

const kWidthSizedBox = SizedBox(width: kDefaultPadding);

const kHalfWidthSizedBox = SizedBox(width: kDefaultPadding/2);

const kHalfSizedBox = SizedBox(height: kDefaultPadding/2);

//Validation for mobile
const String mobilePattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';

//Validation for Email
const String emailPattern = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";