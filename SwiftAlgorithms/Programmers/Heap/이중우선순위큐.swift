//
//  42628.swift
//  SwiftAlgorithms
//
//  Created by Brian Park on 2021/07/13.
//
// 프로그래머스
// 코딩테스트 연습 - 힙 - 이중우선순위큐

import Foundation

func solution42628(_ operations:[String]) -> [Int] {
    var queue = [Int]()
    let operations = operations.map { $0.components(separatedBy: " ") }
    
    for operation in operations {
        let command = operation[0]
        let num = Int(operation[1])!
        
        if command == "I" {
            queue.append(num)
        }
        
        if command == "D" && !queue.isEmpty {
            num == 1 ? queue.sort() : queue.sort(by: >)
            queue.removeLast()
        }
    }

    return queue.isEmpty ? [0,0] : [queue.max()!, queue.min()!]
}


