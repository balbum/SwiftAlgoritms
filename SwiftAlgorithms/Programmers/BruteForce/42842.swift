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
    for i in 1...(yellow == 1 ? 2 : yellow/2) {
        if yellow % i == 0 {
            let w = yellow / i
            let h = i
            if 2*(w+2) + 2*h == brown {
                return [w+2, h+2]
            }
        }
    }
    return []
}

