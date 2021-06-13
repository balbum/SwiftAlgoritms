//
//  42840.swift
//  SwiftAlgorithms
//
//  Created by Brian Park on 2021/06/13.
//
// 프로그래머스
// 코딩테스트 연습 - 완전탐색 - 모의고사
// https://programmers.co.kr/learn/courses/30/lessons/42840

import Foundation

func solution42840(_ answers:[Int]) -> [Int] {
    let s1 = [1, 2, 3, 4, 5]
    let s2 = [2, 1, 2, 3, 2, 4, 2, 5]
    let s3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    var result = [1:0, 2:0, 3:0]
    
    for (index, element) in answers.enumerated() {
        result[1]! += element == s1[index % s1.count] ? 1 : 0
        result[2]! += element == s2[index % s2.count] ? 1 : 0
        result[3]! += element == s3[index % s3.count] ? 1 : 0
    }
    
    let max = result.values.max()
    let rank = result.filter({$0.value == max}).keys.sorted()
    
    return rank
}


