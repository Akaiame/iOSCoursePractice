import UIKit

/*
 Create variables or constants where you can store: your
 age, title of your position, information about whether you are at home or not.
 */

let name = "Dmitry"
var age = 24
var position = "iOs Developer"
var homeStatus = false
let seniorPosition = "Senior "

/*
 Change the values:
 ○ age - add year
 ○ profession name - add the word “Senior” before the name
 ○ change your status to the opposite one
 */

age = age + 1
age += 1
position = seniorPosition + position
homeStatus.toggle()

/*
 Print all the data to the console, embedding it in a sentence: “I am *** years old,
 and I work at the position ***”
 */

print("Hello, my name is \(name), I am \(age) years old, I work at the position \(position).")


