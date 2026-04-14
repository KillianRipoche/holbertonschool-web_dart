String longestUniqueSubstring(String str) {
  Map<String, int> lastSeen = {};
  int left = 0;
  int bestStart = 0;
  int bestLen = 0;

  for (int right = 0; right < str.length; right++) {
    String ch = str[right];
    if (lastSeen.containsKey(ch) && lastSeen[ch]! >= left) {
      left = lastSeen[ch]! + 1;
    }
    lastSeen[ch] = right;
    if (right - left + 1 > bestLen) {
      bestLen = right - left + 1;
      bestStart = left;
    }
  }
  return str.substring(bestStart, bestStart + bestLen);
}
