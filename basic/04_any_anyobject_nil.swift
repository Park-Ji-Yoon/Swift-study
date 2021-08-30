/* Any, AnyObject, nil */

/*
  Any : Swift의 모든 타입을 지칭하는 키워드
  AnyObject : 모든 클래스 타입을 지칭하는 프로토콜
  nil : 없음을 의미하는 키워드
*/

var someAny: Any = 100
someAny = "hello"
someAny = 3.14
// let someDouble: Double = someAny  // 오류

class SomeClass {}
var someAnyObject: AnyObject = SomeClass()
// someAnyObject = 123.456  // 오류

// 어떤 데이터 값, 클래스 타입이 올 수 있지만 없는 값은 올 수 없다
// someAny = nil  // 오류
// someAnyObject = nil  // 오류