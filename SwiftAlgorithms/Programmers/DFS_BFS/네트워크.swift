//
//  네트워크.swift
//  SwiftAlgorithms
//
//  Created by Brian Park on 2021/07/31.
//
// 프로그래머스
// 코딩테스트 연습 - 깊이/너비 우선 탐색(DFS/BFS) - 네트워크
// https://programmers.co.kr/learn/courses/30/lessons/43162

import Foundation

func solution43162(_ n:Int, _ computers:[[Int]]) -> Int {
    var visit: [Bool] = Array(repeating: false, count: n)
    var answer = 0
    
    func dfs(_ vertax: Int) {
        visit[vertax] = true
        
        for i in 0..<n {
            if computers[vertax][i] == 1 && !visit[i] {
                dfs(i)
            }
        }
    }
    
    for i in 0..<n {
        if !visit[i] {
            answer += 1
            dfs(i)
        }
    }
    
    return answer
}
