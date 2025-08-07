// কারণ ইনপুট লিস্টের (items) আকার (n) বাড়ার সাথে সাথে,
// লুপটি ঠিক ততবারই (n) চলবে।
void printAllElements(List<String> items) {
  print("Printing all elements from the list:");
  // লিস্টে n সংখ্যক আইটেম থাকলে, লুপটি n বার ঘুরবে
  for (var item in items) {
    print(item);
  }
}

// main function হলো Dart প্রোগ্রামের প্রবেশদ্বার (entry point)
void main() {
  // পরীক্ষার জন্য একটি লিস্ট তৈরি করা
  List<String> myProgrammingLanguages = ["Dart", "Python", "JavaScript", "Java"];
  List<String> myColors = ["Red", "Green"];

  // Stopwatch তৈরি করা
  final stopwatch = Stopwatch();

  // প্রথম লিস্টের জন্য সময় পরিমাপ
  print("--- Testing with a 4-element list ---");
  stopwatch.start();
  printAllElements(myProgrammingLanguages);
  stopwatch.stop();
  print("Execution time: ${stopwatch.elapsedMicroseconds} microseconds.\n");
  stopwatch.reset();

  // দ্বিতীয় লিস্টের জন্য সময় পরিমাপ
  print("--- Testing with a 2-element list ---");
  stopwatch.start();
  printAllElements(myColors);
  stopwatch.stop();
  print("Execution time: ${stopwatch.elapsedMicroseconds} microseconds.");
  stopwatch.reset();
}