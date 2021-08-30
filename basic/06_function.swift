/* 함수 */

// func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입) -> 반환타입 {
//   함수 구현
//   return 반환값
// }

func sum(a: Int, b: Int) -> Int {
  return a + b
}

func printMyName(name: String) -> Void {
  print(name)
}

// Void일 경우 반환타입 생략해도 됨
func printMyName(name: String) {
  print(name)
}

// 매개 변수가 없는 함수
func maximumIntegerValue() -> Int {
  return Int.max
}

// 매개 변수와 반환값 없는 함수
func hello(){
  print("hello")
}

sum(a: 3, b: 5) // 8
printMyName(name: "jiyoon") // jiyoon
maximumIntegerValue() // Int의 chleotrkqt
hello() // hello

// 매개변수 기본값
func greeting(friend: String, me: String = "jiyoon"){
  print("Hello \(friend)! I'm \(me)")
}
greeting(friend: "haha")
greeting(friend: "haha", me: "park")

// 전달인자 레이블 : 매개변수 역할을 명확하게 하거나 사용자 입장에서 표현하고자 할 때 사용
func greeting(to friend: String, from me: String = "jiyoon"){
  print("Hello \(friend)! I'm \(me)")
}
greeting(to: "haha", from: "park")
 
// 가변 매개변수 (함수 하나당 1개의 가변 매개변수 사용 가능)
func sayHelloToFriends(me: String, friends: String...) -> String {
  return "Hello \(friends)! I'm \(me)!"
}
print(sayHelloToFriends(me: "jiyoon", friends: "haha", "park")) // Hello ["haha", "park"] I'm jiyoon!
print(sayHelloToFriends(me: "jiyoon") // Hello [] I'm jiyoon!

// 데이터 타잉ㅂ으로서의 함수
var someFunction: (String, String) -> Void = greeting(to:from:)
someFunction("park", "jiyoon") // Hello park I'm jiyoon

someFunction = greeting(friend:me:)
someFunction("park", "jiyoon")

// 타입이 다르면 할당 불가
// someFunction = sayHelloToFriends(me: friends:)

func runAnother(function: (String, String) -> Void {
  functio("jenny", "mike")
})

runAnother(fuunction: gretting(friend:me:)) // Hello jenny! I'm mike

runAnother(function: someFunction) // Hello Jenny! I'm mike