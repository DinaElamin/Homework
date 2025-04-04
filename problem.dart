/*nums = [3,2,3,2,2,2]
Output: true
Explanation: 
There are 6 elements in nums, so they should be divided into 6 / 2 = 3 pairs.
If nums is divided into the pairs (2, 2), (3, 3), and (2, 2), it will satisfy all the conditions.*/
class Solution {
  bool divideArray(List<int> nums) {
    nums.sort();
    
    if ((nums.length / 2).toInt().isEven) {
      for (var i = 0; i < nums.length; i++) {
        if (i == i + 1) {
          nums.removeRange(i, i + 1);
        }
        if (nums.isEmpty) {
          return true;
        }
      }
    }
    return false;
  }
}
