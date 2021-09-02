///Defined the images to be used across the application as constant values in a Singleton Instance
class AllImages {
  AllImages._();

  static final AllImages _instance = AllImages._();

  factory AllImages() => _instance;

  String centreLogo = 'assets/images/centre_logo.png';
  String testOvalWithLogo = 'assets/images/test_oval_with_logo.png';
}
