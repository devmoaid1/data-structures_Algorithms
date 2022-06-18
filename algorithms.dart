import 'dart:collection';

String binarySearch(int target, List<int> list) {
  String result = '';
  int low = 0;
  int high = list.length - 1;
  while (low <= high) {
    int middle = ((high + low) / 2).round();
    int guess = list[middle];

    if (target == guess) {
      result = 'your target found at postion $middle';
      break;
    }
    if (guess > target) {
      high = middle - 1;
    }
    if (guess < target) {
      low = middle + 1;
    } else {
      result = 'Not found';
    }
  }

  return result;
}

int findSmallest(List<int> array) {
  int smallest = array[0];
  int smallest_index = 0;
  for (var i = 0; i < array.length; i++) {
    if (array[i] < smallest) {
      smallest = array[i];
      smallest_index = i;
    }
  }
  return smallest_index;
}

List<int> selectionSort(List<int> array) {
  List<int> sorted = [];
  List<int> helperArray = List.from(array);
  for (var i = 0; i < array.length; i++) {
    int smallest = findSmallest(helperArray);
    sorted.add(helperArray[smallest]); // add smallest
    helperArray.removeAt(smallest); // remove it after updating sorting list
  }

  return sorted;
}


// countDown using recursive calling
void countDown(int n) {
  if (n <= 0) {
    return;
  } else {
    print(n);
    countDown(n - 1);
  }
}
// get sum of list of numbers using recursive calling 
int getSum(List<int> numbers) {
  int total = 0;

  if (numbers.isEmpty) {
    return 0;
  }
  if (numbers.length == 1) {
    return total + numbers[0];
  } else {
    total += numbers[0] +
        getSum(numbers.where((element) => element != numbers[0]).toList());

    return total;
  }
}


// get count using recursive calling 
int getCount(List list) {
  int counter = 0;

  if (list.isEmpty) {
    return 0;
  }
  if (list.length == 1) {
    return counter + 1;
  } else {
    counter =
        1 + getCount(list.where((element) => element != list[0]).toList());
    return counter;
  }
}


// get max number from list using recursive calling 
int getMax(List<int> list) {
  int max = 0;

  if (list.isEmpty) {
    return 0;
  }
  if (list.length == 1) {
    return max;
  } else {
    if (list[0] > max) {
      max = list[0];
    }

    getMax(list.where((element) => element != list[0]).toList());
    return max;
  }
}


List<int> quickSort(List<int> list) {
  List<int> smaller = [];
  List<int> larger = [];

  if (list.length < 2) {
    // list is sorted 
    return list;
  } else {
    int pivot = list[list.length - 2];
    smaller = List.from(list.where((element) => element < pivot));
    larger = List.from(list.where((element) => element > pivot));
    return [...quickSort(smaller), pivot, ...quickSort(larger)];
  }
}

bool isPersonIsSeller(String person) {
  if (person == "omar") {
    return true;
  } else {
    return false;
  }
}

bool mangoSellerBreadthSearch(Map<String, dynamic> graph) {
  final searchQueue = ListQueue<String>();
  searchQueue.addAll(graph['you']);

  while (searchQueue.isNotEmpty) {
    final person = searchQueue.removeFirst();
    if (isPersonIsSeller(person)) {
      print("${person} is a mango seller");
      return true;
    } else {
      graph[person].isNotEmpty ? searchQueue.addAll(graph[person]) : null;
    }
  }
  return false;
}
