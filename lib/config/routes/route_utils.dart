enum PAGES { root, demo }

extension AppPageExtension on PAGES {
  String get screenPath {
    switch (this) {
      case PAGES.root:
        return "/";
      case PAGES.demo:
        return "/demo";
      default:
        return "/";
    }
  }

  String get screenName {
    switch (this) {
      case PAGES.root:
        return "ROOT";
      case PAGES.demo:
        return "DEMO";
      default:
        return "ROOT";
    }
  }
}
