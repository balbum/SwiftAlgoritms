//
//  타겟넘버.swift
//  SwiftAlgorithms
//
//  Created by Brian Park on 2021/07/31.
//
// 프로그래머스
// 코딩테스트 연습 - 깊이/너비 우선 탐색(DFS/BFS) - 타겟 넘버
// https://programmers.co.kr/learn/courses/30/lessons/43165

import Foundation

func solution43165(_ numbers:[Int], _ target:Int) -> Int {
    func dfs(index: Int, sum: Int) -> Int {
        if index == numbers.endIndex {
            return sum == target ? 1 : 0
        }
        return dfs(index: index + 1, sum: sum + numbers[index]) + dfs(index: index + 1, sum: sum - numbers[index])
    }

    return dfs(index: 0, sum: 0)
}
