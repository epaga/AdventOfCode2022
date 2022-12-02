//
//  Puzzle2-1.swift
//  AdventOfCode2022
//

import Foundation
import SwiftUI

struct Puzzle21: View {
    
    var body: some View {
        PuzzleView(code: """

            return "\\(sorted.reduce(0, +))"
    """) {
            // split into inventories by blank lines (2 line breaks)
            let matches = data21.split(separator: "\n")
            let result = matches.reduce(0) { partialResult, match in
                let moves = match.split(separator: " ")
                if (moves[0] == "A") {
                    if (moves[1] == "X") {
                        return partialResult + 1 + 3
                    } else if (moves[1] == "Y") {
                        return partialResult + 2 + 6
                    } else {
                        return partialResult + 3 + 0
                    }
                } else if (moves[0] == "B") {
                    if (moves[1] == "X") {
                        return partialResult + 1 + 0
                    } else if (moves[1] == "Y") {
                        return partialResult + 2 + 3
                    } else {
                        return partialResult + 3 + 6
                    }
                } else {
                    if (moves[1] == "X") {
                        return partialResult + 1 + 6
                    } else if (moves[1] == "Y") {
                        return partialResult + 2 + 0
                    } else {
                        return partialResult + 3 + 3
                    }
                }
            }
            return "\(result)"
        }
    }
}

struct Puzzle21_Previews: PreviewProvider {
    static var previews: some View {
        Puzzle21()
    }
}
