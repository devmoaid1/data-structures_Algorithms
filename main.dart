import 'algorithms.dart';

void main() {
  // var selectioSortTest = selectionSort([10, 6, 15, 88, 8]);
  // var test = binarySearch(4, [0, 1, 2, 3, 4, 5, 6, 7]);
  // int total = getSum([]);
  // Map<String, dynamic> graph = {
  //   'you': ['tarek', 'ahmed', 'youssef'],
  //   'tarek': ['omar', 'khaled'],
  //   'ahmed': [],
  //   'youssef': [],
  //   'omar': [],
  //   'khaled': []
  // };

  var graph = {
    "START": {"A": 6, "B": 2},
    "A": {"FIN": 1},
    "B": {"A": 3, "FIN": 1},
    "FIN": {}
  };

  var costs = {"A": 6, "B": 2, "FIN": 9999999};

  var parents = {"A": "START", "B": "START", "FIN": ""};

  print(dijkstra(graph, parents, costs));
}
