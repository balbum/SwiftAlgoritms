//
//  차이를최대로.swift
//  SwiftAlgorithms
//
//  Created by Brian Park on 2021/07/31.
//
// 백준
// https://www.acmicpc.net/problem/10819


/// - Note: N개의 정수로 이루어진 배열 A가 주어진다.
///         이때, 배열에 들어있는 정수의 순서를 적절히 바꿔서 다음 식의 최댓값을 구하는 프로그램을 작성하시오.
/// 입력: |A[0] - A[1]| + |A[1] - A[2]| + ... + |A[N-2] - A[N-1]|
/// 출력: 첫째 줄에 배열에 들어있는 수의 순서를 적절히 바꿔서 얻을 수 있는 식의 최댓값을 출력한다.


import Foundation

func solutionBOJ10819(_ array: [Int], _ n: Int) {
    var result = [[Int]]()
    var max = 0
    
    /// Niklaus Wirth의 재귀 알고리즘
    func permuteWirth(_ a: [Int], _ n: Int) {
        if n == 0 {
            result += [a]
        } else {
            var a = a
            permuteWirth(a, n - 1)
            for i in 0..<n {
                a.swapAt(i, n)
                permuteWirth(a, n - 1)
                a.swapAt(i, n)
            }
        }
    }
    
    permuteWirth(array, n-1)
    
    for i in result {
        var sum = 0
        
        for j in 0..<n-1 {
            sum += abs(i[j] - i[j+1])
        }
        max = max < sum ? sum : max
    }
    print(max)
}

