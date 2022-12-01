//
//  main.swift
//  No rights reserved.
//

import Foundation

func main() {
    let fileUrl = URL(fileURLWithPath: "./aoc-input")
    guard let inputString = try? String(contentsOf: fileUrl, encoding: .utf8) else { fatalError("Invalid input") }
    
    let lines = inputString.components(separatedBy: "\n")

    var elves: [Int] = []
    var currentElf = 0
    
    lines.forEach { line in
        if line.isEmpty {
            elves.append(currentElf)
            currentElf = 0
        } else {
            currentElf += Int(line)!
        }
    }
    
    print(elves)
    print(elves.sorted().dropFirst(elves.count - 3).reduce(0, +))
}

main()
