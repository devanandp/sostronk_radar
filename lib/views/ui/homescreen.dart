import 'package:flutter/gestures.dart';
import 'package:sostronk_radar/sostronk_radar_app.dart';

/// This is the stateless widget that the main application instantiates for homescreen.
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = new SizeConfig();
    sizeConfig.init(context);
    return Scaffold(
        backgroundColor: Color.fromRGBO(28, 43, 62, 1),
        body: SafeArea(
          child: SingleChildScrollView(
            dragStartBehavior: DragStartBehavior.start,
            physics: BouncingScrollPhysics(),
            child: Container(
              width: MediaQuery.of(context).size.width / 0.4,
              padding: EdgeInsets.only(top: 200),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          left: 10,
                          right: 10,
                          child: Center(
                            child: Stack(children: [
                              Positioned.fill(
                                child: RadarView(),
                              ),
                              centreLogo(),
                            ]),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 150),
                  listOfTestWidgets()
                ],
              ),
            ),
          ),
        ));
  }

///Returns the list of test widgets as images
  Widget listOfTestWidgets() {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, left: 20, right: 20),
            height: 70.toHeight,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromRGBO(71, 93, 117, 1),
                ),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
          ),
          Container(
            width: 400,
            padding: EdgeInsets.only(top: 60, left: 20, right: 20),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromRGBO(71, 93, 117, 1),
                ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: testOvalLogo(),
          ),
        ],
      ),
    );
  }

/// Returns the centre logo
  Widget centreLogo() {
    return Positioned(
      child: Center(
        child: Image.asset(
          AllImages().centreLogo,
          height: 1000.0.toHeight,
          width: 1000.0.toHeight,
        ),
      ),
    );
  }

///Returns the test oval logo image
  Widget testOvalLogo() {
    return Column(
      children: [
        for (int i = 0; i <= 5; i++)
          Container(
            height: 100,
            width: 200,
            child: Image.asset(AllImages().testOvalWithLogo),
            alignment: Alignment.centerLeft,
          ),
      ],
    );
  }
}
