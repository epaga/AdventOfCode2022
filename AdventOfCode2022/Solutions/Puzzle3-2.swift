//
//  Puzzle3-2.swift
//  AdventOfCode2022
//

import Foundation
import SwiftUI

struct Puzzle32: View {
    
    var body: some View {
        PuzzleView(code: """
            // split into rucksacks
            let rucksacks = data3.split(separator: "\\n")
            var result = 0
            // in groups of 3
            for i in stride(from: 0, to: rucksacks.count, by: 3) {
                let r1 = rucksacks[i]
                let r2 = rucksacks[i+1]
                let r3 = rucksacks[i+2]
                for char in r1 {
                    // as soon as we find a character in all three we're done
                    if r2.contains(char) && r3.contains(char) {
                        // uppercase ASCII start at 65
                        let uppercaseValue = (char.asciiValue ?? 255) - 64
                        if uppercaseValue > 26 {
                            // lowercase ASCII start at 97
                            result += Int(uppercaseValue - 32)
                            break
                        }
                        result += Int(uppercaseValue+26)
                        break
                    }
                }
            }
            return "\\(result)"
    """) {
            // split into rucksacks
            let rucksacks = data3.split(separator: "\n")
            var result = 0
            // in groups of 3
            for i in stride(from: 0, to: rucksacks.count, by: 3) {
                let r1 = rucksacks[i]
                let r2 = rucksacks[i+1]
                let r3 = rucksacks[i+2]
                for char in r1 {
                    // as soon as we find a character in all three we're done
                    if r2.contains(char) && r3.contains(char) {
                        // uppercase ASCII start at 65
                        let uppercaseValue = (char.asciiValue ?? 255) - 64
                        if uppercaseValue > 26 {
                            // lowercase ASCII start at 97
                            result += Int(uppercaseValue - 32)
                            break
                        }
                        result += Int(uppercaseValue+26)
                        break
                    }
                }
            }
            return "\(result)"
        }
    }
}

struct Puzzle32_Previews: PreviewProvider {
    static var previews: some View {
        Puzzle32()
    }
}
