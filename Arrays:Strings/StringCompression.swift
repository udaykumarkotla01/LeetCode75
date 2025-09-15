
func compress(_ char: inout [Character]) -> Int {
    if char.isEmpty { return 0 }

    var ans: [Character] = []
    var count = 1
    var prev = char[0]

    for i in 1..<char.count {
        if char[i] == prev {
            count += 1
        } else {
            ans.append(prev)
            if count > 1 {
                ans += Array(String(count))
            }
            prev = char[i]
            count = 1
        }
    }

    // Append the last character and its count
    ans.append(prev)
    if count > 1 {
        ans += Array(String(count))
    }

    char = ans
    return ans.count
}

var arr : [Character] = ["a","a","b","b","c","c","c"]
let compressedLength = compress(&arr)
print(arr)
print(compressedLength)
