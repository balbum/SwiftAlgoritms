//
//  여행경로.swift
//  SwiftAlgorithms
//
//  Created by Brian Park on 2021/07/31.
//
// 프로그래머스
// 코딩테스트 연습 - 깊이/너비 우선 탐색(DFS/BFS) - 여행경로
// https://programmers.co.kr/learn/courses/30/lessons/43164

import Foundation

func solution43164(_ tickets:[[String]]) -> [String] {
    let tickets = tickets.sorted { $0[1] < $1[1] }
    var visited = Array(repeating: false, count: tickets.count)
    var result = [String]()
    
    func dfs(_ start: String) {
        if result.count == tickets.count {
            result.append(start)
            return
        }
        
        tickets.enumerated().forEach { index, element in
            if !visited[index] && element[0] == start {
                visited[index] = true
                result.append(start)
                dfs(element[1])
                
                if result.count == tickets.count + 1 {
                    return
                }
                
                result.removeLast()
                visited[index] = false
            }
        }
    }
    
    dfs("ICN")
    return result
}
