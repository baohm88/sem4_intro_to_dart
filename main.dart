void main(List<String> args) {
  List<int> nums = [1, 2, 3, 4, 5, 6];

  var result = nums.where((n) => n % 2 == 0)
                    .map((n) => n * n)
                    .toList();
  print(result);
}