enum PAGES { root }

extension AppPageExtension on PAGES {
  String get screenPath {
    switch (this) {
      case PAGES.root:
        return "/";
      default:
        return "/";
    }
  }

  String get screenName {
    switch (this) {
      case PAGES.root:
        return "ROOT";
      default:
        return "ROOT";
    }
  }
}
