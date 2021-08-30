// Bool (0, 1 사용 불가)
var someBool: Bool = true
someBool = false

// Int
var someInt: Int = -987
// someInt = 100.1  // 오류

// UInt (양의 정수만 가능)
var someUInt: UInt = 100
// someUInt = -100  // 오류
// someUInt = someInt // 오류

// Float
var someFloat: Float = 3.14
someFloat = 3

// Double
var someDouble: Double = 3.14
// someDouble = someFloat // 오류

// Character (큰따옴표 사용, 유니코드)
var someCharater: Character = "a"
// someCharater = "abc" // 오류

// String
var someString: String = "hello world"
someString = someString + "!!"
print(someString)
// someString = someCharacter  // 오류