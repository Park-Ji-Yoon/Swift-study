/* 콘솔에 출력하기, 문자열 보강법 */

let age: Int = 10
"Hello I'm \(age)years old" // "Hello I'm 10years old"
"Hello I'm \(age + 9)years old" // "Hello I'm 19years old"
print("Hello I'm \(age + 9)years old")


class Person{
  var name: String = "jiyoon"
  var age: Int = 19
}

let person01: Person = Person()
print(person01)
dump(person01)