//
//  Puzzle3-1.swift
//  AdventOfCode2022
//

import Foundation
import SwiftUI

struct Puzzle31: View {
    
    var body: some View {
        PuzzleView(code: """
            // split into rucksacks
            let rucksacks = data3.split(separator: "\\n")
            let result = rucksacks.map {
                line in
                let l:String = String(line)
                // find the midpoint
                let halfPoint = l.utf16.count/2
                let compartment1 = l.substring(to: halfPoint)
                let compartment2 = l.substring(from: halfPoint)
                for char in compartment1 {
                    // as soon as we find a character that's in both we're done
                    if compartment2.contains(String(char)) {
                        // uppercase ASCII start at 65
                        let uppercaseValue = (char.asciiValue ?? 255) - 64
                        if uppercaseValue > 26 {
                            // lowercase ASCII start at 97
                            return Int(uppercaseValue - 32)
                        }
                        return Int(uppercaseValue+26)
                    }
                }
                fatalError("")
            }.reduce(0, +)
            // return the the largest amount of total calories
            return "\\(result)"
    """) {
            // split into rucksacks
            let rucksacks = data3.split(separator: "\n")
            let result = rucksacks.map {
                line in
                let l:String = String(line)
                // find the midpoint
                let halfPoint = l.utf16.count/2
                let compartment1 = l.substring(to: halfPoint)
                let compartment2 = l.substring(from: halfPoint)
                for char in compartment1 {
                    // as soon as we find a character that's in both we're done
                    if compartment2.contains(String(char)) {
                        // uppercase ASCII start at 65
                        let uppercaseValue = (char.asciiValue ?? 255) - 64
                        if uppercaseValue > 26 {
                            // lowercase ASCII start at 97
                            return Int(uppercaseValue - 32)
                        }
                        return Int(uppercaseValue+26)
                    }
                }
                fatalError("")
            }.reduce(0, +)
            // return the the largest amount of total calories
            return "\(result)"
        }
    }
}

struct Puzzle31_Previews: PreviewProvider {
    static var previews: some View {
        Puzzle31()
    }
}
