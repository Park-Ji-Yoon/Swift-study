/* 열거형 */

enum Weekday{
  case mon
  case tue
  case wed
  case thu, fri, sat, sun
}

var day: Weekday = Weekday.mono
day = .tue

print(day)

// 모든 요소를 case 해주면 default필요 없음
switch day{
  case .mon, .tue, .wed, .thu:
    print("평일입니다")
  case Weekday.fri:
    print("불금")
  case .sat, .sun:
    print("주말")
}

// 1씩 증가
enum Fruit: Int{
  case apple = 0
  case grape = 1
  case peach
}

print("Fruit.peach.rawValue == \(Fruit.peach.rawValue)")
// Fruit.peach.rawValue == 2

enum School: String{
  case elementary = "초등"
  case middle = "중등"
  case high = "고등"
  case university
}

print("School.middle.rawValue == \(School.middle.rawValue)")
// School.middle.rawValue == 중등

print("School.university.rawValue == \(School.university.rawValue)")
// School.university.rawValue == university

// let apple: Fruit = Fruit(rawValue: 0)  // 오류 발생
let apple: Fruit? = Fruit(rawValue: 0)

if let orange: Fruit = Fruit(rawValue: 5){
  print("rawValue 5에 해당하는 케이스는 \(orange)입니다")
}else{
  prnt("rawValue 5에 해당하는 케이스가 없습니다")
} // rawValue 5에 해당하는 케이스가 없습니다

enum Month {
    case dec, jan, feb
    case mar, apr, may
    case jun, jul, aug
    case sep, oct, nov
    
    func printMessage() {
        switch self {
        case .mar, .apr, .may:
            print("따스한 봄~")
        case .jun, .jul, .aug:
            print("여름 더워요~")
        case .sep, .oct, .nov:
            print("가을은 독서의 계절!")
        case .dec, .jan, .feb:
            print("추운 겨울입니다")
        }
    }
}

Month.mar.printMessage()