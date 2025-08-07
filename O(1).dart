// এই ফাংশনের কমপ্লেক্সিটি O(1)
// কারণ ইনপুটের আকার যাই হোক না কেন, এটি শুধু প্রথম উপাদানটি অ্যাক্সেস করে।
void printFirstElement(List<String> items) {
  // লিস্টে ১টি আইটেম থাকুক বা ১ মিলিয়ন, শুধু প্রথমটি প্রিন্ট করতে একই সময় লাগবে
  if (items.isNotEmpty) {
    print("The first element is: ${items[0]}");
  } else {
    print("The list is empty.");
  }
}

// main function হলো Dart প্রোগ্রামের প্রবেশদ্বার (entry point)
void main() {
  // পরীক্ষার জন্য একটি লিস্ট তৈরি করা
  List<String> myFruits = ["Apple", "Banana", "Orange", "Mango"];
  List<String> emptyList = [];

  // Stopwatch তৈরি করা
  final stopwatch = Stopwatch();

  print("Testing with a populated list:");
  // টাইমার শুরু করা
  stopwatch.start();
  // ফাংশনটি কল করা
  printFirstElement(myFruits);
  // টাইমার বন্ধ করা
  stopwatch.stop();
  // ফাংশনটি চলতে কত সময় লেগেছে তা প্রিন্ট করা
  print("Execution time: ${stopwatch.elapsedMicroseconds} microseconds.\n");
  // পরবর্তী ব্যবহারের জন্য টাইমার রিসেট করা
  stopwatch.reset();

  print("Testing with an empty list:");
  stopwatch.start();
  printFirstElement(emptyList);
  stopwatch.stop();
  print("Execution time: ${stopwatch.elapsedMicroseconds} microseconds.");
  stopwatch.reset();
}
