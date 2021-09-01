/* 상속 */

class Person{
  var name: String = ""

  func selfIntroduct(){
    print("저는 \(name)입니다")
  }

  // 재정의 불가능
  final func sayHello(){
    print("hello")
  }

  static func typeMethod(){
    print("type method - static")
  }

  // 재정의 가능
  class func classMethod(){
    print("type method - class")
  }

  // 재정의 불가능 (static = final class)
  final class func finalClassMethod(){
    print("type method - final class")
  }
}

class Student: Person {
    // var name: String = ""
    var major: String = ""
    
    override func selfIntroduce() {
        print("저는 \(name)이고, 전공은 \(major)입니다")
    }
    
    override class func classMethod() {
        print("overriden type method - class")
    }
    
    // static을 사용한 타입 메서드는 재정의 할 수 없습니다
    // override static func typeMethod() {    }
    
    // final 키워드를 사용한 메서드, 프로퍼티는 재정의 할 수 없습니다
    // override func sayHello() {    }
    // override class func finalClassMethod() {    }
}

let yagom: Person = Person()
let hana: Student = Student()

yagom.name = "yagom"
hana.name = "hana"
hana.major = "Swift"

yagom.selfIntroduce()
// 저는 yagom입니다

hana.selfIntroduce()
// 저는 hana이고, 전공은 Swift입니다

Person.classMethod()
// type method - class

Person.typeMethod()
// type method - static

Person.finalCalssMethod()
// type method - final class


Student.classMethod()
// overriden type method - class

Student.typeMethod()
// type method - static

Student.finalCalssMethod()
// type method - final class
