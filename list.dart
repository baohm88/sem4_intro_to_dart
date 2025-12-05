void main(List<String> args) {
  List<int> nums = [1, 2, 3, 4, 5, 6];

  var squaredNums = nums.map((n) => n * n).toList();
  var evenNums = nums.where((n) => n % 2 == 0).toList();

  var squaredEvenNums = nums.where((n) => n % 2 == 0).map((n) => n * n).toList();

  print('SquaredNums = $squaredNums');
  print('Even numbers: $evenNums');
  print('Squared even numbers: $squaredEvenNums');
}
