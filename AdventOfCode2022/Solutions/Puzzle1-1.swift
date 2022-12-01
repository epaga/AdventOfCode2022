//
//  Puzzle1-1.swift
//  AdventOfCode2022
//

import Foundation
import SwiftUI

struct Puzzle11: View {
    
    var body: some View {
        PuzzleView(code: """
                // split into inventories by blank lines (2 line breaks)
                let elfInventories = data11.split(separator: "\\\\n\\\\n")
                let inventorySums = elfInventories.map {
                    inventory in
                    // for each inventory -> for each line -> add up the entries
                    inventory
                        .split(separator: "\\n")
                        .reduce(0) { singleEntry, str in
                            singleEntry + Int(str)!
                    }
                }
                // return the the largest amount of total calories
                return "\\(inventorySums.max()!)"
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
            // return the the largest amount of total calories
            return "\(inventorySums.max()!)"
        }
    }
}

struct Puzzle11_Previews: PreviewProvider {
    static var previews: some View {
        Puzzle11()
    }
}
