//
//  Puzzle1-1.swift
//  AdventOfCode2022
//

import Foundation
import SwiftUI

struct Puzzle12: View {
    
    var body: some View {
        PuzzleView(code: """
            // split into inventories by blank lines (2 line breaks)
            let elfInventories = data11.split(separator: "\\n\\n")
            let inventorySums = elfInventories.map {
                inventory in
                // for each inventory -> for each line -> add up the entries
                inventory
                    .split(separator: "\\n")
                    .reduce(0) { singleEntry, str in
                        singleEntry + Int(str)!
                }
            }
            var sorted:[Int] = inventorySums.sorted().reversed()
            sorted = [sorted[0],sorted[1],sorted[2]]
            // return the the largest amount of total calories
            return "\\(sorted.reduce(0, +))"
    """) {
            // split into inventories by blank lines (2 line breaks)
            let elfInventories = data11.split(separator: "\n\n")
            let inventorySums = elfInventories.map {
                inventory in
                // for each inventory -> for each line -> add up the entries
                inventory
                    .split(separator: "\n")
                    .reduce(0) { singleEntry, str in
                        singleEntry + Int(str)!
                }
            }
            var sorted:[Int] = inventorySums.sorted().reversed()
            sorted = [sorted[0],sorted[1],sorted[2]]
            // return the the sum of top 3 calories
            return "\(sorted.reduce(0, +))"
        }
    }
}

struct Puzzle12_Previews: PreviewProvider {
    static var previews: some View {
        Puzzle12()
    }
}
