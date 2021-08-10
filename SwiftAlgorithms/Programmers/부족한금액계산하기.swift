//
//  부족한금액계산하기.swift
//  SwiftAlgorithms
//
//  Created by Brian Park on 2021/08/10.
//
// 프로그래머스 - 부족한 금액 계산하기
// https://programmers.co.kr/learn/courses/30/lessons/82612

import Foundation

func solution82612(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var answer:Int64 = -1
    var requiredMoney = 0
    
    for i in 0..<count {
        let n = i+1
        requiredMoney += price * n
    }
    
    answer = Int64(money-requiredMoney) < 0 ? abs(Int64(money-requiredMoney)) : 0
    return answer
}
