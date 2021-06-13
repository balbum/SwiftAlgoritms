//
//  42839.swift
//  SwiftAlgorithms
//
//  Created by Brian Park on 2021/06/13.
//
// 프로그래머스
// 코딩테스트 연습 - 완전탐색 - 소수 찾기
// https://programmers.co.kr/learn/courses/30/lessons/42839

import Foundation

func solution42839(_ numbers: String) -> Int {
    let result = permutation(numbers)
    return result.count
}

/// 순열 알고리즘
func permutation(_ numbers: String) -> [Int] {
    let numArray = numbers.map { String($0) }
    var resultSet = Set<Int>()
    
    /// DFS를 이용한 순열 알고리즘
    func dfs(_ numbers: [String], _ depth: Int, _ value: String) {
        guard depth < numArray.count else { return }
        var n = numbers
        for i in 0..<numbers.count {
            let item = n[i]
            /// 첫번째 요소를 추출
            n.remove(at: i)
            /// value와 추출한 요소를 합친다.
            let num = Int(value+item)!
            /// 해당 숫자가 소수인지 판단
            if isPrimeNumber(num) {
                /// 소수라면 결과 Set에 추가한다.
                resultSet.update(with: num)
            }
            /// 추출된 배열 n, depth +1 하고 조합한 value+item 으로 재귀 호출로 재탐색
            dfs(n, depth + 1, value + item)
            /// numArray 에서 다 꺼내서 탐색한 경우 다시 삽입하여
            n.insert(item, at: i)
        }
    }
    
    dfs(numArray, 0, "")

    return Array(resultSet)
}

/// 소수인지 판단
/// 소수란? 1과 자기 자신만으로 나누어 떨어지는 1보다 큰 양의 정수.
/// 자연수 n이 소수인지 아닌지를 판정하려면 "2  보다 크거나 같고" "n 제곱근보다 작거나 같은"  범위에 있는 모든 소수 p로
/// n을 나누어 보아, 나누어 떨어지지 않으면 소수이고, 나누어 떨어지면 합성수이다.
func isPrimeNumber(_ n: Int) -> Bool {
    guard n > 1 else { return false }
    
    if n > 3 {
        for i in 2...Int(sqrt(Double(n))) {
            if n % i == 0 {
                return false
            }
        }
    }
    return true
}
