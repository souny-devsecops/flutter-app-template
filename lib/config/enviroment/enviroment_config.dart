import 'package:flutter_dotenv/flutter_dotenv.dart';

enum EnvName { dev, uat, prd }

class AppEnvironment {
  static String get apiUrl => dotenv.env['API_URL'] ?? "";
  static EnvName get envName =>
      EnvName.values.byName(dotenv.env['ENV_NAME'] ?? "dev");
}
