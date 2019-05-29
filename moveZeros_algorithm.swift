func moveZero( _ nums:[Int])->[Int]{
    var solution = nums
    for i in 0...nums.count - 1 {
        if solution[nums.count - 1 - i] == 0 {
            solution.remove(at: (nums.count - 1 - i))
            solution.append(0)
        }
    }
    return solution
}
print(moveZero([0,0,1,0,2,3,0,4,5]))
