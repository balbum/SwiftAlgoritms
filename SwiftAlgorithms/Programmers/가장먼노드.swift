//
//  가장먼노드.swift
//  SwiftAlgorithms
//
//  Created by Brian Park on 2021/07/31.
//
// 프로그래머스
// 코딩테스트 연습 - 그래프 - 가장 먼 노드
// https://programmers.co.kr/learn/courses/30/lessons/49189


import Foundation

func solution49189(_ n:Int, _ edge:[[Int]]) -> Int {
    var nearNode: [[Int]] = []
    var visited: [Bool] = []
    var result: [Set<Int>] = [[1]]
    
    nearNode = Array(repeating: [], count: n+1)
    visited = Array(repeating: false, count: n+1)
    
    edge.forEach {
        nearNode[$0[0]].append($0[1])
        nearNode[$0[1]].append($0[0])
    }
    
    func bfs(_ s: Int,_ depth: Int) {
        nearNode[s].forEach {
            if !visited[$0] {
                visited[$0] = true
                result[depth].insert($0)
            }
        }
    }
    
    var depth = 1
    visited[1] = true
    
    while result.last!.count > 0 {
        result.append([])
        for node in result[result.count - 2] {
            bfs(node, depth)
        }
        depth += 1
    }
    
    result.removeLast()
    
    return result.last?.count ?? 0
}
