import UIKit

extension String {
    
    func isPalindrome(str: String) -> Bool {
        if str.count < 2 {
            return false
        } else if str == String(str.reversed()) {
            return true
        } else {
            return false
        }
        
    }
    var isPalindrome : Bool {
        if self.count < 2 {
            return false
        }
        return self.lowercased() == String(self.lowercased().reversed())
    }
}

let string = "m"
string.isPalindrome

extension Double {
    
    func toPow(pow: Double) -> Double {
        
        var result: Double = self
        
        if pow > 0 {
            var i: Double = 1
            
            while i < pow {
                result *= self
                i += 1
            }
        } else if pow < 0 {
            var j: Double = 1
            while j < pow {
                result *= self
                j += 1
            }
            result = 1/result
        } else {
            result = 1
        }
        
        return result
    }
}

2.toPow(pow: -2)
