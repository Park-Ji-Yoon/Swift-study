/* 구조체 */

struct Sample{
  // 인스턴스 프로퍼티
  var mutableProperty: Int = 100 // 가변 프로퍼티
  let immutableProperty: Int = 100 // 불변 프로퍼티

  stativ var typeProperty: Int = 100 // 타입 프로퍼티

  // 인스턴스 메서드
  func instanceMethod(){
    print("instance method")
  }

  // 타입 메서드
  static func typeMethod(){
    print("type method")
  }
}

// 가변 인스턴스
var mutable: Sample = Sample()
mutable.mutableProperty = 200
// mutable.immutableProperty = 200  // 오류 발생

// 불변 인스턴스
let immutable: Sample = Sample()
// immutable.mutableProperty = 200  // 오류 발생
// mutable.immutableProperty = 200  // 오류 발생

// 타입 프로퍼티 및 메서드
Sample.typeProperty = 300
Sample.typeMethod() // type method

// mutable.typeProperty = 400  // 오류 발생
// mutable.typeMethod()  // 오류 발생

struct Student{
  var name: String = "unknown"
  var `class`: String = "Swift"

  static func selfIntroduce(){
    print("학생타입")
  }

  func selfIntroduce(){
    print("저는 \(self.class)반 \(name)입니다")
  }
}

Student.selfIntroduce() // 학생타입입니다

var jiyoon: Student = Student()
jiyoon.name = "jiyoon"
jiyoon.class = "스위프트"
jiyoon.selfIntroduce() // 저는 스위프트반 jiyoon입니다

let anna: Student = Student()
// anna.name = "anna"  // 오류 발생
anna.selfIntroduce() // 저는 Swift반 unknown입니다