import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class EnvConfig {
  static String betaServerUrl = dotenv.env['BETA_SERVER_URL'] ?? "";
  static String prodServerUrl = dotenv.env['PROD_SERVER_URL'] ?? "";
  static String localServerUrl = dotenv.env['LOCAL_SERVER_URL'] ?? "";
  static String localServerUrl2 = dotenv.env['LOCAL_SERVER_URL2'] ?? "";

  // ONE SIGNAL APP ID
  static String oneSignalDevAppId = dotenv.env['ONE_SIGNAL_DEV_APP_ID'] ?? "";
  static String oneSignalProdAppId = dotenv.env['ONE_SIGNAL_PROD_APP_ID'] ?? "";
}
