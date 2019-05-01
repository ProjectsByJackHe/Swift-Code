import Foundation
var numbers:[Int] = [1,2,3,4]
var probability:[Double] = [0.1,0.5,0.2,0.2]
func returnPercent(num:[Int], prob:[Double])->([String]){
    if  prob.count != num.count {
        return ["Make sure both arrays have the same amount of elements."]
    }
    var text:[String] = []
    for i in num {
        var percent = prob[i]*100
        text.append("\(num[i]), \(percent)% of the time.")
    }
    return text
}
let ans:[String] = returnPercent(num: numbers, prob: probability)
print(ans)
