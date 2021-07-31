//
//  단어변환.swift
//  SwiftAlgorithms
//
//  Created by Brian Park on 2021/07/31.
//
// 프로그래머스
// 코딩테스트 연습 - 깊이/너비 우선 탐색(DFS/BFS) - 단어 변환
// https://programmers.co.kr/learn/courses/30/lessons/43163

import Foundation

func solution43163(_ begin:String, _ target:String, _ words:[String]) -> Int {
    var visited = Array(repeating: false, count: words.count)
    var ans = Int.max
    
    func bfs(_ start: String, _ cnt: Int) {
        if start == target {
            ans = min(ans,cnt)
            return
        }
        
        words.enumerated().forEach { index, element in
            if !visited[index] && zip(start, element).filter({ $0 != $1 }).count == 1 {
                visited[index] = true
                bfs(element, cnt + 1)
                visited[index] = false
            }
        }
    }
    
    bfs(begin,0)
    return ans == Int.max ? 0 : ans
}
