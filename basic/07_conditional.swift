/* 조건문 */

let someInteger = 100

if someInteger < 100{
  print("100 미만")
}else if someInteger > 100{
  print("100 초과")
}else{
  print("100")
}
// 100

// 조건문의 조건에는 항상 Bool 타입이 와야 함

switch someInteger{
  case 0:
    print("zero")
  case 1..<100: // 1이상 100미만 
    print("1~99")
  case 100:
    print("100")
  case 101...Int.max: // 101이상 Int.max이하
    print("over 100")
  default:
    print)("unknown")
}

switch "jiyoon"{
  case "jake", "jon":
    print("jake or jon")
    fallthrough // break 없는 것처럼
  case "jenny":
    print("jenny")
  case "jiyoon":
    print("jiyoon!!")
  default:
    print("unknown")
}
// jiyoon!!