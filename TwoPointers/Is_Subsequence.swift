///  392. Is Subsequence
///

func isSubsequence(_ s: String, _ t: String) -> Bool {
    guard s.count > 0 else { return true }
    guard t.count > 0 else { return false }
    guard t.count > s.count else { return false }
    let s1 : [Character] = Array(s)
    let t1 : [Character] = Array(t)
    var j = 0

    for i in 0..<t.count{
        if(s1[j]==t1[i] && j<s1.count){
            j += 1
            if j == s.count { return true }
        }
    }
    return false
}

let isSubsequence1 = isSubsequence("abc", "ahbgdc")
print(isSubsequence1)
let isSubsequence2 = isSubsequence("axc", "azzz")
print(isSubsequence2)
