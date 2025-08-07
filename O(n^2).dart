// এই ফাংশনের কমপ্লেক্সিটি O(n^2) - Quadratic Time
// কারণ ইনপুট লিস্টের (items) আকার (n) এর জন্য,
// মোট অপারেশন সংখ্যা প্রায় n * n = n^2 হয়।
void printPairs(List<String> items) {
  print("Printing all possible pairs from the list:");
  // বাইরের লুপ n বার চলে
  for (var item1 in items) {
    // ভিতরের লুপও বাইরের লুপের প্রতিটি আইটেমের জন্য n বার চলে
    for (var item2 in items) {
      print("$item1, $item2");
    }
  }
}

// main function হলো Dart প্রোগ্রামের প্রবেশদ্বার (entry point)
void main() {
  // পরীক্ষার জন্য একটি ছোট লিস্ট তৈরি করা হয়েছে।
  // লিস্ট বড় হলে আউটপুট অনেক বেশি হবে (n*n)।
  // যেমন, ১০টি আইটেমের জন্য ১০০টি লাইন প্রিন্ট হবে।
  List<String> myTeam = ["Alice", "Bob", "Charlie"];

  // Stopwatch তৈরি করা
  final stopwatch = Stopwatch();

  // টাইমার শুরু করা
  stopwatch.start();
  // ফাংশনটি কল করা
  printPairs(myTeam);
  // টাইমার বন্ধ করা
  stopwatch.stop();

  // ফাংশনটি চলতে কত সময় লেগেছে তা প্রিন্ট করা
  print("\nExecution time for a 3-element list: ${stopwatch.elapsedMicroseconds} microseconds.");
  stopwatch.reset();
}