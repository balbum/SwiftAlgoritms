//
//  자연수뒤집어배열로만들기.swift
//  SwiftAlgorithms
//
//  Created by Brian Park on 2021/08/10.
//
// 프로그래머스 - 자연수 뒤집어 배열로 만들기
// https://programmers.co.kr/learn/courses/30/lessons/12932

import Foundation

func solution12932(_ n:Int64) -> [Int] {
    /// Solution 1
//    let str = String(n)
//    var reveredStr = ""
//
//    for i in str {
//        reveredStr = String(i) + reveredStr
//    }
//
//    let result = reveredStr.map { Int(String($0))! }
    
    /// Solution 2
    var arr = Array(String(n))
    var i = arr.startIndex
    var j = arr.endIndex
    
    while j != arr.count/2 {
        j = j - 1
        arr.swapAt(i, j)
        i = i + 1
    }
    let result = String(arr).map { Int(String($0))! }
    return result
}
