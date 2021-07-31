//
//  42586.swift
//  SwiftAlgorithms
//
//  Created by Brian Park on 2021/06/13.
//
// 프로그래머스
// 코딩테스트 연습 - 스택/큐 - 기능개발
// https://programmers.co.kr/learn/courses/30/lessons/42586

import Foundation

func solution42586(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var progress = progresses
    var index = 0
    var result = [Int]()
    var countNum = 0
    
    while true {
        for i in index..<progresses.count {
            progress[i] += speeds[i]
        }
        
        if progress[index] >= 100 {
           
            while progress[index] >= 100 {
                if (index == progress.count-1) && (progress[index] >= 100) {
                    countNum += 1
                    result.append(countNum)
                    return result
                }
                countNum += 1
                index += 1
            }
            result.append(countNum)
            print(result)
            countNum = 0
        }
    }
    return result
}
