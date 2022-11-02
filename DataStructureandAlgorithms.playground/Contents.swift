import Foundation
/*
 Given two arrays, create a function that let's a user know whether these two arrays contain any common items.
 */
//O(n)
func findCommonItem(A: [Int], B: [Int]) -> Bool {
    var hashA = [Int:Bool]()
    for a in A {
        hashA[a] = true
    }
    for b in B {
        if hashA[b] == true {
            return true
        }
    }
    return false
}
findCommonItem(A: [1, 2, 3], B: [4, 5, 6])
findCommonItem(A: [1, 2, 3], B: [3, 5, 6])
