//
//  순위.swift
//  SwiftAlgorithms
//
//  Created by Brian Park on 2021/07/31.
//
// 프로그래머스
// 코딩테스트 연습 - 그래프 - 순위
// https://programmers.co.kr/learn/courses/30/lessons/49191

import Foundation

func solution49191(_ n:Int, _ results:[[Int]]) -> Int {
    var table = Array(repeating: (0,0), count: n+1)
    var array = Array(repeating: [Int](), count: n+1)
    
    results.forEach {
        array[$0[1]].append($0[0])
    }
    
    for i in 1...n {
        var visit = Array(repeating: false , count: n+1)
        visit[i] = true
        var queue = [i]
        var lose = 0
        while !queue.isEmpty {
            let first = queue.removeFirst()
            for next in array[first] {
                if visit[next] == false {
                    visit[next] = true
                    table[next].0 += 1
                    lose += 1
                    queue.append(next)
                }
            }
        }
        table[i].1 = lose
    }
    
    return table.filter{ $0.0+$0.1 == n-1 }.count
}
