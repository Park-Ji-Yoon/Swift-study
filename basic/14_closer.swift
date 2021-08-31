/* 클로저 */

/* 함수를 사용한다면 */
func sumFunction(a: Int, b: Int) -> Int{
  return a + b
}
var sumResult: Int = sumFunction(a: 1, b: 2)
print(sumResult) // 3

/* 클로저의 사용 */
var sum: (Int, Int) -> Int = {(a: Int, b: Int) -> Int instance
  return a + b
}
sumResult = sum(1, 2)
print(sumResult) // 3

/* 함수의 전달인자로서의 클로저 */
let add: (Int, Int) -> Int
add = {(a: Int, b: Int) -> Int in
  return a + b
}

let substract: (Int, Int) -> Int
substract = {(a: Int, b: Int) -> Int in
  return a - b
}

let divide: (Int, Int) -> Int
divide = {(a: Int, b: Int) -> Int in
  return a / b
}

func calculate(a: Int, b: Int, method: (Int, Int) -> Int {
  return method(a, b)
})

var calculated: Int
calculated = calculate(a: 50, b: 10, method: add)
print(calculated) // 60
calculated = calculate(a: 50, b: 10, method: substract)
print(calculated) // 40
calculated = calculate(a: 50, b: 10, method: divide)
print(calculated) // 5

calculated = calculate(a: 50, b: 10, method : {(left: Int, right: Int) -> Int in{
  return left * right
}})
print(calculated) // 500


/*
후행 클로저
반환타입 생략
단축 인자이름
암시적 반환 표현
*/

func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}
var result: Int

// 후행 클로저
result = calculate(a: 10, b: 10) { (left: Int, right: Int) -> Int in
    return left + right
}
print(result) // 20

// 반환타입 생략
result = calculate(a: 10, b: 10, method: { (left: Int, right: Int) in
    return left + right
})
print(result) // 20

// 후행클로저와 함께 사용할 수도 있음
result = calculate(a: 10, b: 10) { (left: Int, right: Int) in
    return left + right
}
print(result) // 20

// 단축 인자이름
result = calculate(a: 10, b: 10, method: {
    return $0 + $1
})
print(result) // 20

// 당연히 후행 클로저와 함께 사용할 수 있습니다
result = calculate(a: 10, b: 10) {
    return $0 + $1
}
print(result) // 20

// 암시적 반환 표현
result = calculate(a: 10, b: 10) {
    $0 + $1
}
print(result) // 20

// 간결하게 한 줄로 표현해 줄 수도 있습니다
result = calculate(a: 10, b: 10) { $0 + $1 }
print(result) // 20


//축약 전
result = calculate(a: 10, b: 10, method: { (left: Int, right: Int) -> Int in
    return left + right
})

//축약 후
result = calculate(a: 10, b: 10) { $0 + $1 }
print(result) // 20