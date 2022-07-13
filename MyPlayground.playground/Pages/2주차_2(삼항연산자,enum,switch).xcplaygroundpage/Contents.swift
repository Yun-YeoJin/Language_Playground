
import UIKit
import Foundation

var email: String = "duwls@duwls.com" //선언과 초기화 동시

var email2: String?
email2 = "Yun@Yun.com" // 선언만 하고 나중에 초기화

type(of: email)
type(of: email2)

// 숫자형 배열 만들기
var array = Array(repeating: 0, count: 100)
print(array)
var array2: [Int]? = [Int](1...100)
type(of: array2)

//옵셔널 체이닝(?) & 강제 언래핑(!)
if array2?.count == 0 {
    print("값이 없습니다.")
} else {
    print(array2!.count)
}

// 삼항 연산자
// var result = "" //  조건  ?  참이면         거짓이면
let result = array2 == nil ? "값이 없다" : "값이 있습니다." // 두 개의 타입은 무조건 같아야함
print(result)

func example() -> String {
    let result2 = Int.random(in: 1...100)
    
    return result2 > 50 ? "up" : "down"
    
    // if result > 50 { // 반환값이 Bool 값으로 판단이 가능한 요소만 가능. (반환값이 Bool 타입인 함수는 가능)
    // return "up"
    // } else {
    // return "down" }
}

example()

func BMIResult() -> (String, Double) {
    let result = Double.random(in: 1...30)
    
    if result < 18.5 {
        return ("윤기사", 1.0)
    } else if result >= 18.5 && result < 23 {
        return ("윤기사", 2.0)
    } else {
        return ("윤기사", 3.0)
    }
}

let userBMI = BMIResult()
type(of: userBMI)

print("\(userBMI.0)님의 BMI등급은 \(userBMI.1)입니다.")
print(userBMI.0 + "님의 BMI등급은" + "\(userBMI.1)" + "입니다.")

// return 생략
func randomNumber() -> Int {
   /*return*/ Int.random(in: 1...30)
    
}

let plusNumber = randomNumber() + 10
print(plusNumber)


// 매개변수 기본값 사용
// 함수 이름이 같은 함수 -> 오버로딩 (Overloading)
func sayHello(nickname: String? = "손", gender: Int? = 2) -> String {
    return nickname! + "님, 반갑습니다!"
}

let user = array2 == nil ? "손" : "윤기사"

sayHello(nickname: "테스트")

print("안녕하세요", "윤기사입니다" ,separator: "123", terminator: "456")
print("윤기사입니다" ,separator: "123", terminator: "456")

//열거형 (Enum) ex. 남/여/안함 -> black/blue/white
enum Gender: String {
    case man = "남성" //0
    case woman = "여성" //1
    case nothing = "선택안함" //2
}
var gender: Gender = Gender.nothing // "남자", "여자", "선택 안함"

switch gender {
case .man: print("남자")
case .woman: print("여자")
default:
    print("선택안함")
}

gender.rawValue

enum HTTPCode: Int {
    case OK // 0
    case NO_PAGE // 1
    case NOT_FOUND = 404
    case SERVER_ERROR // 위에 404로 설정했기 때문에 404 + 1이 실행된다.
    
    //열거형 안에 func을 만들 수 있다.
    func showStatus() -> String {
        switch self {
        case .OK: return "정상입니다"
        case .NO_PAGE: return "잘못된 주소"
        case .NOT_FOUND: return "페이지를 찾을 수 없음"
        case .SERVER_ERROR: return "서버 긴급점검"
        }
    }
}
var Error: HTTPCode = HTTPCode.SERVER_ERROR

switch Error {
case .OK: print("정상", Error.rawValue)
case .NO_PAGE: print("잘못된 페이지 주소", Error.rawValue)
case .NOT_FOUND: print("페이지를 찾을 수 없습니다.", Error.rawValue)
case .SERVER_ERROR: print("서버 점검중", Error.rawValue)
}

let result2 = Error.showStatus()
print(result2)
