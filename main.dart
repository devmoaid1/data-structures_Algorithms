import 'algorithms.dart';

void main() {
  // var selectioSortTest = selectionSort([10, 6, 15, 88, 8]);
  // var test = binarySearch(4, [0, 1, 2, 3, 4, 5, 6, 7]);
  // int total = getSum([]);
  Map<String, dynamic> graph = {
    'you': ['tarek', 'ahmed', 'youssef'],
    'tarek': ['omar', 'khaled'],
    'ahmed': [],
    'youssef': [],
    'omar': [],
    'khaled': []
  };
  int count = getCount(["ahmed", 'youssed', 'moaid']);

  int max = getMax([11, 10, 9]);
  // print(selectioSortTest);
  // print(test);
  bool isMangoSeller = mangoSellerBreadthSearch(graph);
  print(isMangoSeller);
}
