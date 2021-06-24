//
//  42746.swift
//  SwiftAlgorithms
//
//  Created by Brian Park on 2021/06/20.
//
// 프로그래머스
// 코딩테스트 연습 - 정렬 - 가장 큰 수

import Foundation

/// - Note: 0 또는 양의 정수가 주어졌을 때, 정수를 이어 붙여 만들 수 있는 가장 큰 수를 알아내 주세요.
///         예를 들어, 주어진 정수가 [6, 10, 2]라면 [6102, 6210, 1062, 1026, 2610, 2106]를 만들 수 있고, 이중 가장 큰 수는 6210입니다.
///         0 또는 양의 정수가 담긴 배열 numbers가 매개변수로 주어질 때, 순서를 재배치하여 만들 수 있는 가장 큰 수를 문자열로 바꾸어 return 하도록 solution 함수를 작성해주세요.
///         numbers [6, 10, 2]
///         return "6210"

func solution42746(_ numbers:[Int]) -> String {
    var strings = numbers.map { String($0) }
    /// 첫번째 요소를 앞에 배치할 때와 두번째 요소를 앞에 배치할 떄 어떨때 더 큰지 비교하여 정렬
    strings.sort { $0+$1 > $1+$0 }
    let result = strings.joined()

    /// 정렬된 배열 첫번째 값이 0 일 경우 정수 형태가 아니므로 Int 로 변환하여 다시 String 으로 return
    if let num = Int(result) {
        return String(num)
    }
    
    return result
}
