/* 클래스 */
/* 구조체는 값 타입, 클래스는 참조 타입*/

class Sample{
  // 인스턴스 프로퍼티
  var mutableProperty: Int = 100 // 가변 프로퍼티
  let immutableProperty: Int = 100 // 불변 프로퍼티

  stativ var typeProperty: Int = 100 // 타입 프로퍼티

  // 인스턴스 메서드
  func instanceMethod(){
    print("instance method")
  }

  // 타입 메서드
  // 재정의 불가 타입 메서드 - static
  static func typeMethod(){
    print("type method")
  }

  // 타입 메서드
  // 재정의 불가 타입 메서드 - static
  class func typeMethod(){
    print("type method")
  }
}

var mutableReference: Sample = Sample()
mutableReference.mutableProperty = 200
// mutableReference.immutableProperty = 200

let immutableReference: Sample = Sample()
immutableReference.mutableProperty = 200
// immutableReference.immutableProperty = 200

// immutableReference = mutableReference

// 타입 프로퍼티 및 메서드
Sample.typeProperty = 300
Sample.typeMethod() // type method

// mutableReference.typeProperty = 400
// mutableReference.typeMethod()

class Student{
  var name: String = "unknown"
  var `class`: String = "Swift"

  class func selfIntroduce(){
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
anna.name = "anna"
anna.selfIntroduce() // 저는 Swift반 unknown입니다