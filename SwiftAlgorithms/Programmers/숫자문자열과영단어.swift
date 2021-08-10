//
//  숫자문자열과영단어.swift
//  SwiftAlgorithms
//
//  Created by Brian Park on 2021/08/10.
//
// 프로그래머스 - 숫자 문자열과 영단어
// https://programmers.co.kr/learn/courses/30/lessons/81301

import Foundation

func solution81301(_ s:String) -> Int {
    let numbers = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    
    var string = s
    
    for (index,element) in numbers.enumerated() {
        string = string.replacingOccurrences(of: element, with: String(index))
    }
    
    let result = Int(string)!
    
    return result
}
