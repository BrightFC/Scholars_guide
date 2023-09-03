import 'package:scholars_guide/Export.dart';

class FeeScreen extends StatelessWidget {
  const FeeScreen({super.key});
  static String routeName = 'FeeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fee'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding),
                  topRight: Radius.circular(kDefaultPadding),
                ),
                color: kOtherColor
              ),
              child: ListView.builder(
                itemCount: fee.length,
                itemBuilder: (context, int index) {
                  return Container(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(kDefaultPadding),
                            ),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: kTextLightColor,
                                blurRadius: 2.0
                              )
                            ]
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [

                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              )
            ),
          )
        ],
      ),
    );
  }
}
