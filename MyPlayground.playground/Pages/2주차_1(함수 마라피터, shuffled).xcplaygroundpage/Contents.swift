import UIKit

// 매개변수 없는 함수
func setNickname() -> Void {
    print("개발하는 윤기사")
}
setNickname()

// 매개변수 있는 함수
func setNicknameParameter(nickname: String) -> String {
    print("저는 \(nickname)입니다.")
    return "저는 \(nickname)입니다"
}

setNicknameParameter(nickname: "윤기사")

func getGameCharcter(name: String, age: Int) -> [String]{
    
    let character = ["도적", "도사","주술", "전사", "격투가"]
    let select = character.randomElement()!
    
    return [name, select]
    
}

var numberSet: Set = [2,4,6,8,10,12,14,16,18,20]
var numberSet2: Set = [1,2,3,4,5,6,7,8,9,10]

numberSet.subtract(numberSet2)

var numberArray = [1,2,3,4,5,6,7,8,9]

//shuffled는 반환값이 있음 -> [Int]
numberArray.shuffled()

//shuffle은 반환값이 없음. 그냥 끝나버림
numberArray.shuffle()
print(numberArray)

