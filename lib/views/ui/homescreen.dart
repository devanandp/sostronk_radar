import 'package:sostronk_radar/sostronk_radar_app.dart';

/// This is the stateless widget that the main application instantiates for homescreen.
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = new SizeConfig();
    sizeConfig.init(context);
    return Scaffold(
      backgroundColor: MyColors().backGroundLinearGradientColor1,
        body: SafeArea(
      child: SingleChildScrollView(
        dragStartBehavior: DragStartBehavior.start,
        physics: BouncingScrollPhysics(),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                MyColors().backGroundLinearGradientColor1,
                MyColors().backGroundLinearGradientColor2
              ])),
          width: MediaQuery.of(context).size.width / 0.4,
          padding: EdgeInsets.only(top: 200.toHeight),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: OrientationHelper.isPortrait(context) ? 1000.toHeight : 4000.toHeight ,
                width: OrientationHelper.isPortrait(context) ? MediaQuery.of(context).size.width : 300.toWidth,
                child: Stack(
                  children: [
                    Positioned.fill(
                      left: 100.toWidth,
                      right: 100.toWidth,
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
              // SizedBox(height: 150.toHeight),
              listOfTestWidgets(context)
            ],
          ),
        ),
      ),
    ));
  }

  ///Returns the list of test widgets as images
  Widget listOfTestWidgets(BuildContext context) {
    return Padding(
      padding: OrientationHelper.isPortrait(context) ? EdgeInsets.all(60.0.toHeight) : EdgeInsets.only(left: 10.0.toWidth, right: 10.toWidth),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 60.toHeight, left: 40.toWidth, right: 40.toWidth),
            height: OrientationHelper.isPortrait(context) ? 70.toHeight : 140.toHeight,
            width: OrientationHelper.isPortrait(context) ? 400.toWidth : 200.toWidth,
            decoration: BoxDecoration(
                border: Border.all(
                  color: MyColors().bottomListBorderColor,
                ),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
          ),
          Container(
            width: OrientationHelper.isPortrait(context) ? 400.toWidth : 200.toWidth,
            decoration: BoxDecoration(
                border: Border.all(
                  color: MyColors().bottomListBorderColor,
                ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
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
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int i = 0; i <= 5; i++)
          Container(
            height: 250.toHeight,
            width: 250.toWidth,
            alignment: Alignment.centerLeft,
            child: Image.asset(
              AllImages().testOvalWithLogo,
            ),
          ),
      ],
    );
  }
}
