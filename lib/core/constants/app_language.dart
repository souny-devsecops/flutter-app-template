import 'app_assets_path.dart';

class AppLanguage {
  final int id;
  final String flag;
  final String name;
  final String languageCode;

  AppLanguage(this.id, this.flag, this.name, this.languageCode);

  static List<AppLanguage> languageList() {
    return <AppLanguage>[
      AppLanguage(1, AppAssetsPath.fEnglish, "English", "en"),
      AppLanguage(2, AppAssetsPath.fLaos, "ພາສາລາວ", "lo"),
      AppLanguage(3, AppAssetsPath.fThai, "ไทย", "th"),
    ];
  }
}
