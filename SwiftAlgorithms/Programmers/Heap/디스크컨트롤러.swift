//
//  42627.swift
//  SwiftAlgorithms
//
//  Created by Brian Park on 2021/07/13.
//
// 프로그래머스
// 코딩테스트 연습 - 힙 - 디스크 컨트롤러

import Foundation

func solution42627(_ jobs:[[Int]]) -> Int {
    var time = 0
    var total = 0
    
    var sortedJob = jobs.sorted { (first, second) -> Bool in
        if first[1] < second[1] {
            return true
        }
        if first[1] == second[1] {
            return first[0] < second[0]
        }
        return false
    }
    
    while sortedJob.count > 0 {
        for (index, element) in sortedJob.enumerated() {
            if element[0] <= time {
                time = time + element[1]
                total = total + time - element[0]
                sortedJob.remove(at: index)
                break
            }
            
            if index == sortedJob.count - 1 {
                time = time + 1
            }
        }
    }
    
    return total / jobs.count
}
