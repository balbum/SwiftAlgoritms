//
//  블랙잭.swift
//  SwiftAlgorithms
//
//  Created by Brian Park on 2021/07/31.
//
// 백준
// https://www.acmicpc.net/problem/2798

import Foundation

func solutionBOJ2798(_ info: [Int], _ cards: [Int]) {
    let n = info[0]
    let aim = info[1]
    var cards = cards
    var result = [Int]()
    
    ///순열 재귀함수로 3가지 수로 더한 모든 경우의 수를 갖는 배열을 만들고
    ///기준보다 작거나 같은 배열을 filter해서 그중에서 max값을 가져온다
    func permutation(_ n: Int, _ r: Int, _ depth: Int) {
        if r == depth {
            var arr = [Int]()
            for i in 0..<depth {
                arr.append(cards[i])
            }
            result.append(arr.reduce(0, +))
            return
        }
       
        for i in depth..<n {
            cards.swapAt(i, depth)
            permutation(n,r,depth + 1)
            cards.swapAt(i, depth)
        }
    }

    permutation(n, 3, 0)
    
    let max = result.filter { $0 <= aim }.max()!
 
    print(max)
}
