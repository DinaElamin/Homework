void main(List<String> args) {
  print(containsDuplicate([1,3, 4]));
  print(containsDuplicate([2,2, 4]));
  print(containsDuplicate([4,3, 4]));
}

bool containsDuplicate(List<int> nums) {
  for (var i = 0; i < nums.length; i++) {
    for (var j = 0; j < nums.length; j++) {
      if (nums[i] == nums[j] && i != j) {
        return true;
      }
    }
  }
  return false;
}
