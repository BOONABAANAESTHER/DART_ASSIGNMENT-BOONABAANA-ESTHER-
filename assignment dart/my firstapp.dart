 import 'dart:io';
 import 'dart:convert';
void main(){
  // number 1
  List a;
   a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
   for (int element in a) {
      if (element < 5) {
        print(element);
  }
  }



// number 2

  List findCommonElements(List a, List b) {
  List commonElements = [];

  for (int element in a) {
    if (b.contains(element) && !commonElements.contains(element)) {
      commonElements.add(element);
    }
  }

  return commonElements;
  }

  
  List b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  List commonElements = findCommonElements(a, b);
  print(commonElements);
  

// number 3
  
  bool isPalindrome(String word) {
  
  String cleaned = word.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();

    
  return cleaned == cleaned.split('').reversed.join('');
  }

 
  String input = "mum"; 
  bool result = isPalindrome(input);

  if (result) {
    print("$input is a palindrome.");
  } else {
    print("$input is not a palindrome.");
  }
  

// NUMBER 4
  
  List getFirstAndLastElements(List inputList) {
 
    if (inputList.isEmpty) {
      return [];
    } 
    else {
      int firstElement = inputList.first;
      int lastElement = inputList.last;

      return [firstElement, lastElement];
    }
  }


  List c = [5, 10, 15, 20, 25];
  List answer = getFirstAndLastElements(c);

  print("Original list: $c");
  print("New list with first and last elements: $answer");
 



//number 5
  

  stdout.write('Enter a statement: ');
  String inputString = stdin.readLineSync()!;


String reverseWords(String input) {
  List words = input.split(' ');
  List reversedWords = words.reversed.toList();
  return reversedWords.join(' ');

}
 String reversedString = reverseWords(inputString);
  print('Reversed string: $reversedString');





// number 6

  List<T> removeDuplicates<T>(List<T> list) {
    Set<T> uniqueElements = {};
    List<T> newList = [];

    for (var element in list) {
      if (!uniqueElements.contains(element)) {
        uniqueElements.add(element);
        newList.add(element);
      }
    }

    return newList;
  }


  List inputList = [1, 2, 3, 4, 2, 1, 5, 3, 6];
  List newList = removeDuplicates(inputList);
  print('Original List: $inputList');
  print('List with duplicates removed: $newList');



  //number 7
  
  String jsonString = File('birthdays.json').readAsStringSync();

 
  Map birthdays = jsonDecode(jsonString);

 
  Map birthdayCountByMonth = {};

  birthdays.forEach((month, count) {
    birthdayCountByMonth[month] = (birthdayCountByMonth[month] ?? 0) + count;
  });

  print(birthdayCountByMonth);

}
