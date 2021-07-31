//
//  43236.swift
//  SwiftAlgorithms
//
//  Created by Brian Park on 2021/07/13.
//
// 프로그래머스
// 코딩테스트 연습 - 이분탐색 - 징검다리


import Foundation

func solution43236(_ distance:Int, _ rocks:[Int], _ n:Int) -> Int {
    let sorted = rocks.sorted()
    var low = 1
    var high = distance
    var result = 0
            
    while (low <= high) {
        let mid = (low + high) / 2
        var count = 0
        var pre = 0
        
        for i in sorted {
            if i - pre < mid {
                count += 1
            } else {
                pre = i
            }
        }
        
        if distance - pre < mid {
            count += 1
        }
        
        if count <= n {
            result = mid
            low = mid + 1
        } else {
            high = mid - 1
        }
    }
    
    return result
}
