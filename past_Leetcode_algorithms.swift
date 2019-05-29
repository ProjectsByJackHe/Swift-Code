//leetcode problem: immutable array sum

var array = [1,2,3,4,5,6,6]
func sumRange(_ i: Int, _ j: Int) -> Int {
    var sum = 0
    if i == j {
        return array[i]
    }
    for k in i...j {
        sum += array[k]
    }
    return sum
}
let x = sumRange(0, 3)
print(x)



//leetcode problem: Intersection of array [II]
func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    //initial check
    if nums1 == [] || nums2 == [] {
        return []
    }
    var count1:[Int:Int] = [:]
    var count2:[Int:Int] = [:]
  
    for number in nums1 {
        count1[number, default: 0] += 1
    }
   
    for number in nums2 {
        count2[number, default: 0] += 1
    }
    //end of declaring dictionaries
    
    //make unique number list
    let uniqueNum1 = Set(nums1)
    let uniqueNum2 = Set(nums2)
    var solution:[Int] = []
    for num in uniqueNum1 {
        for num2 in uniqueNum2 {
            if num == num2 {
                //get solution
                if count1[num]! < count2[num]! {
                for _ in 0...count1[num]! - 1{
                solution.append(num)
                }
                }
                
                else {
                    for _ in 0...count2[num]! - 1{
                        solution.append(num)
                    }
                }
                
                //end of if statement
            }
        }
    }
   return solution
}
