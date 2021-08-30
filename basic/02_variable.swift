/* 변수와 상수 */

// 상수 : let
// 상수 선언 -> let 이름: 타입 = 값

// 변수 : var
// 변수 선언 -> var 이름: 타입 = 값

// 값의 타입이 명확하면 타입 생략 가능
// 띄어쓰기 주의

let constant: String = "변경 불가능한 상수"
var variable: String = "변경 가능한 변수"

// constant = "변경 불가능" // 오류발생
variable = "변경했습니다"


// 나중에 값을 할당하려고 하는 상수, 변수는 필수적으로 타입 명시
let sum: Int
let inputA: Int = 100
let inputB: Int = 200
var name: String

// 선언 후 첫 할당
sum = inputA + inputB
name = "Jiyoon Park"

// 변수는 재할당 가능
name = "Park Jiyoon"