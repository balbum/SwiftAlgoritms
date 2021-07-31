//
//  42842.swift
//  SwiftAlgorithms
//
//  Created by Brian Park on 2021/06/13.
//
// 프로그래머스
// 코딩테스트 연습 - 완전탐색 - 카펫
// https://programmers.co.kr/learn/courses/30/lessons/42842

import Foundation

func solution42842(_ brown: Int, _ yellow: Int) -> [Int] {
    /// 아래 조건이 성립 할 경우
    /// yellow == x × y
    /// brown == ( x + 2 ) × 2 + y × 2
    for i in 1...(yellow == 1 ? 2 : yellow/2) {
        if yellow % i == 0 {
            let w = yellow / i
            let h = i
            if 2*(w+2) + 2*h == brown {
                /// yellow 보다 가로, 세로 각각 +2
                return [w+2, h+2]
            }
        }
    }
    return []
}

