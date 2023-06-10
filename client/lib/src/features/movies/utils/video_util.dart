class VideoUtil {
  static String extractVideoId(String url) {
    final uri = Uri.parse(url);
    return uri.queryParameters['v'] ?? '';
  }
}
