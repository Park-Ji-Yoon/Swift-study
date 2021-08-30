/* Array, Dictionary, Set */

/*
  Array : 순서가 있는 리스트 컬렉션
  Dictionary : 키와 값의 쌍으로 이루어진 컬렉션
  Set : 순서가 없고, 멤버가 유일한 컬렉션
*/

var integers: Array<Int> = Array<Int>() // 빈 Array
integers.append(1)
integers.append(10)
// integers.append(10.1)  // 오류

integers.contains(10) // true
integers.contains(2) // false

integers.remove(at: 0) // 0번 인덱스의 값 제거
integers.removeLast()
integers.removeAll()

integers.count // 0

// integers[0]  // 오류

// var doubles: Array<Double> = Array<Double>()
var doubles: Array<Double> = [Double]() 
var strings: [String] = [String]()
var characters: [Character] = []

let immutableArray = [1, 2, 3] // let으로 Array선언하면 불변 Array
// immutableArray.append(4)  // 오류
// immutableArray.removeAll()  // 오류

var anyDictionary: Dictionary<String, Any> = [String: Any]()
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100

anyDictionary // ["someKey": "value", "anotherKey": 100]

anyDictionary["someKey"] = "dictionary"
anyDictionary // ["someKey": "dictionary", "anotherKey": 100]

anyDictionary.removeValue(forKey: "anotherKey") // 삭제
anyDictionary["someKey"] = nil // 삭제
anyDictionary // [:]

let emptyDictionary: [String: String] = [:]
let initalizedDictionary: [String, String] = ["name": "jiyoon", "gender": "female"]

// emptyDictionary["key"] = "value"  // 오류

// let somevalue: String = initalizedDictionary["name"]  // 오류


var integerSet: Set<Int> = Set<Int>()
integerSet.insert(1)
integerSet.insert(10)
integerSet.insert(9)
integerSet.insert(9)
integerSet.insert(9)

integerSet // {10, 9, 1}

integerSet.remove(100)
integerSet.removeFirst()

integerSet.count // 1

let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

let union: Set<Int> = setA.union(setB) // {4, 1, 2, 5, 6, 7, 3} 합집합

let sortedUnion: [Int] = union.sorted() // {1, 2, 3, 4, 5, 6, 7} 정렬

let intersedction: Set<Int> = setA.intersection(setB) // {5, 3, 4} 교집합

let subtracting: Set<Int> = setA.subtracting(setB) // {2, 1} 차집합