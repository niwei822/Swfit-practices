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

func checkPrime(n: Int) -> String {
    if n == 0 || n == 1 {
               return "Prime"
           }
           var count = 0
           for i in 1...n {
               if n % i == 0 {
                   count += 1
               }
           }
           if count > 2 {
               return "Not Prime"
           }
    return "Prime"
}
checkPrime(n: 71)
