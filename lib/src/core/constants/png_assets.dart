extension on String {
  String get png => 'assets/images/$this.png';
}

class PngAssets {
  static String get splashImage => 'fanap-logo'.png;
  const PngAssets._();
}
