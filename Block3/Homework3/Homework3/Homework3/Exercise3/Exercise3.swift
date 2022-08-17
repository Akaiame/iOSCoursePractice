//
//  Exercise3.swift
//  Homework3
//
//  Created by Дмитрий Ильичёв on 14.08.2022.
//

import Foundation

/*
 3. Напишите расширения на следующие типы:
 ○ Int - Функция возводит число в N-ую степень. Попробуйте решить задачу без
 использования стандартной функции pow(), решите ее с использованием циклов
 ○ String - Вычисляемое свойство isPalindrome. Возвращает Bool, в зависимости от
 того является ли строка палиндромом.
 
 * Не забывайте, что вы можете искать информацию в интернете
 Протестируйте новые расширения c разными данными, используйте не менее трех тестов
 на каждый тип, которые максимально отличаются между собой
 */

extension Int {
    
    func toPow(pow: Int) -> Int {
        var result = pow > 0 ? self : 1
        
        if pow > 1 {
            var i = 1
            
            while i < pow {
                result *= self
                i += 1
            }
        }
        return result
    }
}

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

//2.toPow(pow: -2)

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

