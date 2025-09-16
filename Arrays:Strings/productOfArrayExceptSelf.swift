func productExceptSelf(_ nums: [Int]) -> [Int] {
    var ans : [Int]  = Array(repeating:1 , count:nums.count)
    /// prefix mul
    //[1,2,3,4] >> [1,1,2,6]
    for i in 1..<nums.count{
        ans[i] = ans[i-1]*nums[i-1]
    }

    //suffix mul
    //[1,2,3,4]>> [24,12,4,1]
    //store suffix temporarily and directly multiply to ans
   var suffix  = 1
    for i in stride(from: nums.count-2, to: -1, by: -1) {
     suffix = suffix * nums[i+1]
     ans[i] *= suffix
    }
    return ans
}

let ans = productExceptSelf([1,2,3,4])
print(ans)
