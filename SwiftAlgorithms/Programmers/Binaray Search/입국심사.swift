//
//  43238.swift
//  SwiftAlgorithms
//
//  Created by Brian Park on 2021/07/13.
//
// 프로그래머스
// 코딩테스트 연습 - 이분탐색 - 입국심사

import Foundation

func solution43238(_ n:Int, _ times:[Int]) -> Int64 {
    var min = 0
    var max = times.max()! * n
    var result: Int64 = 0
    
    while min <= max {
        let mid = (min + max) / 2
        /// 전체시간 / 각 심사관 처리 속도 = 각 심사관 별 처리 가능 인원
        let sum = times.map { mid / $0 }.reduce(0,+)

        if sum >= n {
            result = Int64(mid)
            max = mid - 1
        } else {
            min = mid + 1
        }
    }

    return result
}
