/* 반복문 */

var integers = [1, 2, 3]
let people = ["jiyoon": 19, "eric": 15, "jenny": 21]

for integer in integers{
  print(integer)
}

for(name, age)in people{
  print("\(name): \(age)")
}

while integers.count > 1 {
  integers.removeLast()
}

// do~while
repeat {
  integers.removeLast()
}while integers.count > 0