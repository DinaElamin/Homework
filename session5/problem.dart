void main(List<String> args) {
  print(twoSum([2, 3, 4], 6));
  
}

List<int> twoSum(List<int> nums, int target) {
  List<int> previousNums = [];

  for (int i = 0; i < nums.length; i++) {
    int difference = target - nums[i];

    if (previousNums.contains(difference)) {
      return [previousNums.indexOf(difference), i];
    }

    previousNums.add(nums[i]);
  }

  return [];
}

bool isdistinct(List<int> nums) {
  Set<int> distinctnums = {};
  for (var element in nums) {
    if (distinctnums.contains(element)) {
      return true;
    }
    distinctnums.add(element);
  }
  return false;
}

