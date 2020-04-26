class Constants {
  static bool testing = true;

  /// general setup
  static String appId = "schlupy.frontend";
  static String iosAppId = "schlupy.frontend";
  static String appName = "Schlupy frontend";
  static String appTagLine = "Buiild a FLutter app like a Pro by Using the BLoC Pattern!";
  static String appBio = "The Best Flutter Starter Kit";
  static String contactEmail = "support@acelords.space";
  static String logoKey = "assets/images/logo.png";
  static String appAbout = "Using this app will improve your project deliverability and sharpen your understanding of Flutter"
      "and BLoC pattern in no time. Build Flutter apps like a pro!";

  /// Share message
  static String shareLink = "";
  static String shareMessage = "Check out this Amazing App at " + shareLink;
  static String shareSubject = "Best App Ever!";
  static String twitterUrl = "";

  /// http headers
  static Object apiHeaders = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };

  Map<String, String> backendHeaders = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Authorization': 'Bearer val'
  };

  /// FCM notification keys & topics
  static String publicTopicKey = testing ? "testing" : "public";

  /// e.t.c.
  static double commonPadding = 15.0;
  static String commonDateFormat = "dd MMM yyyy, hh:mm a";

  /// storage keys
  static String accessTokenKey = "token";
  static String userNameKey = "name";
  static String userFullNameKey = "full_name";
  static String userAkaKey = "aka";
  static String userEmailKey = "email";
  static String phoneNumberKey = "phone";
  static String appPreviouslyRunKey = "seen";
  static String userUuidKey = "user_uid";
  static String userAuthenticatedKey = "user_authenticated";
  static String fcmTokenKey = "fcm_token";
  static String vipCoinsKey = "vip_coins";
  static String vipCoinsDateKey = "vip_coins_date";

  /// api routes
  static String apiBaseUrl = "";

}
