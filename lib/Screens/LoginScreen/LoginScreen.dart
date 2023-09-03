import 'package:scholars_guide/Export.dart';


late bool _passwordVisible;

class LoginScreen extends StatefulWidget {
  static String routeName = 'LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.8,
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/Logo (2).png',
                    height: 150.0,
                    width: 150.0,
                  ),
                  SizedBox(
                    height: kDefaultPadding / 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Hi",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height / 20,
                            color: kTextWhiteColor,
                          )),
                      Text(
                        " Student",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 20,
                          fontWeight: FontWeight.bold,
                          color: kTextWhiteColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: kDefaultPadding / 2,
                  ),
                  Text(
                    'Sign in to Continue',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height / 40,
                        color: kTextWhiteColor),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding * 3),
                  topRight: Radius.circular(kDefaultPadding * 3),
                ),
                color: kOtherColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  children: [
                    SizedBox(
                      height: kDefaultPadding,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          buildEmailField(),
                          sizedBox,
                          buildPasswordField(),
                          sizedBox,
                          DefaultButton(
                            onPress: () {
                                if(_formKey.currentState!.validate()) {
                                  Navigator.pushNamedAndRemoveUntil(context, HomeScreen.routeName, (route) => false);
                                }
                              },
                            title: 'SIGN IN',
                            iconData: Icons.arrow_forward_outlined,
                          ),
                          sizedBox,
                          Align(
                              child: Text('Forgotten Password',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: kPrimaryColor,
                              ),),
                            alignment: Alignment.bottomRight,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildEmailField() {
    return TextFormField(
      textAlign: TextAlign.start,
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(
        color: kTextBlackColor,
        fontSize: 17.0,
        fontWeight: FontWeight.w300,
      ),
      decoration: InputDecoration(
        labelText: 'Enter Mobile Number or Email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        isDense: true,
      ),
      validator: (value) {
        RegExp regExp = new RegExp(emailPattern);
        if (value == null || value.isEmpty) {
          return 'please enter some text';
        } else if (!regExp.hasMatch(value)) {
          return 'please enter some text';
        }
      },
    );
  }

  TextFormField buildPasswordField() {
    return TextFormField(
      obscureText: _passwordVisible,
      textAlign: TextAlign.start,
      keyboardType: TextInputType.visiblePassword,
      style: TextStyle(
        color: kTextBlackColor,
        fontSize: 17.0,
        fontWeight: FontWeight.w300,
      ),
      decoration: InputDecoration(
          labelText: 'Password',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          isDense: true,
          suffixIcon: IconButton(
            icon: Icon(
              _passwordVisible
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_off_outlined,
            ),
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
            iconSize: kDefaultPadding,
          )),
      validator: (value) {
        if (value!.length < 5) {
          return 'Must be more than 5 characters';
        }
      },
    );
  }
}
