import UIKit

// MARK: - 常數與變數

//let constant: Int = 10
//let number: Int = 10
//let result: Int = number + constant
//
//let doubleNumber: Double = 10.5

let constant = 10
var number = 10
number = number + constant
print(number)

let message = "Amber App Team"
let helloString = "Hello"
let name = "Jason"
let resultString = helloString + name

let chickenBurger = 39
let peoples = 6
let totalPrice = chickenBurger * peoples
//var totalPriceMessage = "這次餐點總共：$" + totalPrice
var totalPriceMessage = "這次餐點總共：$" + String(totalPrice)
totalPriceMessage = "這次餐點總共：$\(totalPrice)"

// MARK: - 流程控制
let timeYouSmoke: Int = 2

// MARK: if-else
if timeYouSmoke == 2 {
    print("請身去陽台抽煙")
} else {
    print("繼續坐著工作")
}

// MARK: switch
switch timeYouSmoke {
case 2:
    print("請身去陽台抽煙")
default:
    print("繼續坐著工作")
}


